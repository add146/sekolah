import { Hono } from 'hono';
import { authMiddleware, adminMiddleware } from '../lib/auth';
import { Env } from '../index';

const halaman = new Hono<{ Bindings: Env }>();

// Get all published halaman (public)
halaman.get('/', async (c) => {
    try {
        const result = await c.env.DB.prepare(`
            SELECT id_halaman, judul, slug, urutan
            FROM halaman_profil 
            WHERE status = 'Publish'
            ORDER BY urutan ASC, tanggal_post DESC
        `).all();

        return c.json({
            success: true,
            data: result.results,
        });
    } catch (error) {
        console.error('Get halaman error:', error);
        return c.json({ success: false, message: 'Terjadi kesalahan pada server' }, 500);
    }
});

// Get all halaman for admin
halaman.get('/admin', authMiddleware, adminMiddleware, async (c) => {
    try {
        const result = await c.env.DB.prepare(`
            SELECT * FROM halaman_profil 
            ORDER BY urutan ASC, tanggal_post DESC
        `).all();

        return c.json({
            success: true,
            data: result.results,
        });
    } catch (error) {
        console.error('Get halaman admin error:', error);
        return c.json({ success: false, message: 'Terjadi kesalahan pada server' }, 500);
    }
});

// Get single halaman by slug (public)
halaman.get('/:slug', async (c) => {
    try {
        const slug = c.req.param('slug');

        const result = await c.env.DB.prepare(`
            SELECT * FROM halaman_profil 
            WHERE slug = ? AND status = 'Publish'
        `).bind(slug).first();

        if (!result) {
            return c.json({ success: false, message: 'Halaman tidak ditemukan' }, 404);
        }

        return c.json({
            success: true,
            data: result,
        });
    } catch (error) {
        console.error('Get single halaman error:', error);
        return c.json({ success: false, message: 'Terjadi kesalahan pada server' }, 500);
    }
});

// Create halaman (admin only)
halaman.post('/', authMiddleware, adminMiddleware, async (c) => {
    try {
        const body = await c.req.json();

        // Generate slug from judul
        const slug = body.slug || body.judul
            .toLowerCase()
            .replace(/[^a-z0-9\s-]/g, '')
            .replace(/\s+/g, '-')
            .replace(/-+/g, '-');

        const result = await c.env.DB.prepare(`
            INSERT INTO halaman_profil (judul, slug, konten, urutan, status, tanggal_post)
            VALUES (?, ?, ?, ?, ?, datetime('now'))
        `).bind(
            body.judul,
            slug,
            body.konten || '',
            body.urutan || 0,
            body.status || 'Publish'
        ).run();

        return c.json({
            success: true,
            message: 'Halaman berhasil ditambahkan',
            data: { id_halaman: result.meta.last_row_id, slug }
        });
    } catch (error) {
        console.error('Create halaman error:', error);
        return c.json({ success: false, message: 'Terjadi kesalahan pada server' }, 500);
    }
});

// Update halaman (admin only)
halaman.put('/:id', authMiddleware, adminMiddleware, async (c) => {
    try {
        const id = c.req.param('id');
        const body = await c.req.json();

        // Generate slug if judul changed
        const slug = body.slug || body.judul
            ?.toLowerCase()
            .replace(/[^a-z0-9\s-]/g, '')
            .replace(/\s+/g, '-')
            .replace(/-+/g, '-');

        await c.env.DB.prepare(`
            UPDATE halaman_profil SET
                judul = COALESCE(?, judul),
                slug = COALESCE(?, slug),
                konten = COALESCE(?, konten),
                urutan = COALESCE(?, urutan),
                status = COALESCE(?, status),
                tanggal_update = datetime('now')
            WHERE id_halaman = ?
        `).bind(
            body.judul,
            slug,
            body.konten,
            body.urutan,
            body.status,
            id
        ).run();

        return c.json({
            success: true,
            message: 'Halaman berhasil diperbarui',
        });
    } catch (error) {
        console.error('Update halaman error:', error);
        return c.json({ success: false, message: 'Terjadi kesalahan pada server' }, 500);
    }
});

// Delete halaman (admin only)
halaman.delete('/:id', authMiddleware, adminMiddleware, async (c) => {
    try {
        const id = c.req.param('id');

        await c.env.DB.prepare('DELETE FROM halaman_profil WHERE id_halaman = ?').bind(id).run();

        return c.json({
            success: true,
            message: 'Halaman berhasil dihapus',
        });
    } catch (error) {
        console.error('Delete halaman error:', error);
        return c.json({ success: false, message: 'Terjadi kesalahan pada server' }, 500);
    }
});

export default halaman;
