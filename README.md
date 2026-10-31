# HappyDay Birthday Maker

Website maker responsif: tanpa login, upload cover + galeri (maks 6), kue interaktif, surat kejutan, musik MP3 (maks 3 MB), tema pastel/lavender/sunshine/mint, link unik, dashboard browser, kode edit rahasia.

## Setup Supabase
1. Buat project di https://supabase.com
2. Jalankan `supabase.sql` di SQL Editor.
3. Project Settings → API: salin Project URL dan `service_role` key. JANGAN masukkan service role key ke frontend/GitHub.

## Deploy Vercel
1. Push folder ini ke GitHub lalu import ke Vercel.
2. Framework Preset: Other; Build Command kosong; Output Directory `public` (file halaman utama sudah tersedia di `public/index.html`).
3. Environment Variables: `SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY`, `SITE_URL` (URL production).
4. Deploy/redeploy.

## Lokal
`npm install` lalu `npx vercel dev`. Isi `.env` berdasarkan `.env.example`.

## Cara kerja tanpa akun
Halaman dan media disimpan di Supabase, penerima membuka link tanpa login. Dashboard menyimpan daftar di localStorage browser/perangkat pembuat; tidak tersinkron antar perangkat. Kode edit rahasia ditampilkan sekali setelah publish, simpan aman. Saat ini dashboard Edit dapat mengubah pesan; penghapusan online belum disediakan. Siapa pun yang memiliki link dapat melihat media dan pesan. Untuk penggunaan publik tambahkan CAPTCHA/rate limiting. Autoplay musik mungkin diblokir browser; penerima perlu menekan tombol putar.
