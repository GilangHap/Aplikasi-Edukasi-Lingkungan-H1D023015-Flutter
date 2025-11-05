
https://github.com/user-attachments/assets/dcc538b7-3822-4905-b2f0-f972370b86c6
Uploading Recording 2025-11-05 145740.mp4…


Aplikasi Edukasi Lingkungan sederhana dibuat dengan Flutter + GetX.

Deskripsi singkat
- Aplikasi edukasi untuk meningkatkan kesadaran lingkungan.
- Memiliki 5 halaman statis: Home, Fakta Menarik, Cara Daur Ulang, Tips Go Green, Tentang Aplikasi.

Teknologi
- Flutter
- GetX (routing & state management ringan)

Penjelasan singkat kode
- main.dart
  - Menjalankan aplikasi dengan GetMaterialApp.
  - Mengatur tema (warna hijau soft) dan route awal.
- app/routes/app_pages.dart
  - Mendefinisikan semua route (GetPage) untuk 5 halaman.
  - Digunakan oleh Get.toNamed() untuk navigasi.
- app/modules/<nama_module>/
  - Tiap module berisi satu page statis (StatelessWidget) seperti home_page.dart, fakta_menarik_page.dart, dll.
  - Setiap page menggunakan EcoAppBar dan EcoBottomNav.
  - Konten adalah teks, deskripsi, dan ilustrasi/icon environment.
- app/widgets/
  - EcoAppBar: custom AppBar bertema hijau.
  - EcoDrawer: drawer/menu navigasi.
  - EcoBottomNav: bottom navigation bar.
  - Widget custom lainnya untuk card/section agar tampilan konsisten.
- Navigasi
  - Gunakan Get.toNamed('/routeName') untuk pindah halaman dan Get.back() untuk kembali.

Catatan singkat
- Semua halaman statis (tidak ada backend).
- Jika menambah halaman/route, tambahkan entry di app_pages.dart dan file module baru.


