# Create Panel

Halo! Jangan lupa follow ya:

**- Instagram:**
- (https://instagram.com/farel.project_5)
**- TikTok:**
- (https://tiktok.com/@farel.project_5)

## Tentang

**Pembuat**: Farel Alfareza

## Instalasi

Berikut adalah langkah-langkah untuk menginstal:

1. Klik tombol **Code**, lalu pilih **Codespaces**, dan tunggu hingga proses loading selesai.

2. Buka terminal dan jalankan perintah berikut:

```bash
   sudo su
   apt update && apt upgrade
````

3. Jalankan Docker Compose untuk membuat panel:

   ```bash
   docker-compose up -d
   ```

4. Buat akun panel dengan perintah berikut:

   ```bash
   docker-compose run --rm panel php artisan p:user:make
   ```

---

Pastikan Docker dan Docker Compose sudah terinstal sebelum menjalankan perintah di atas.
