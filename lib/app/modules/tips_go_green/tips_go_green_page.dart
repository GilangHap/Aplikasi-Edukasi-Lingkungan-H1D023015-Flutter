import 'package:flutter/material.dart';
import '../../widgets/eco_app_bar.dart';
import '../../widgets/eco_drawer.dart';
import '../../widgets/eco_bottom_nav.dart';

class TipsGoGreenPage extends StatelessWidget {
  const TipsGoGreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EcoAppBar(title: 'Tips Go Green'),
      drawer: const EcoDrawer(),
      backgroundColor: const Color(0xFFF1F8F4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(24, 40, 24, 40),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF26A69A), Color(0xFF4DB6AC)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.energy_savings_leaf,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '🌿 Tips Go Green 🌿',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 0.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Langkah kecil untuk perubahan besar',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Tips Categories
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _buildTipsCategory(
                    title: 'Di Rumah',
                    icon: Icons.home,
                    color: Colors.green,
                    tips: [
                      _TipItem(
                        icon: Icons.lightbulb_outline,
                        title: 'Hemat Listrik',
                        description:
                            'Matikan lampu dan peralatan elektronik saat tidak digunakan. Gunakan lampu LED yang lebih hemat energi.',
                      ),
                      _TipItem(
                        icon: Icons.water_drop,
                        title: 'Hemat Air',
                        description:
                            'Tutup keran saat menyikat gigi. Perbaiki keran yang bocor. Gunakan air bekas cucian untuk menyiram tanaman.',
                      ),
                      _TipItem(
                        icon: Icons.ac_unit,
                        title: 'AC Bijak',
                        description:
                            'Set suhu AC di 24-26°C. Bersihkan filter AC secara rutin. Matikan AC saat keluar ruangan.',
                      ),
                      _TipItem(
                        icon: Icons.local_laundry_service,
                        title: 'Cuci Efisien',
                        description:
                            'Kumpulkan cucian hingga penuh baru mencuci. Jemur pakaian di bawah matahari daripada pakai pengering.',
                      ),
                    ],
                  ),

                  _buildTipsCategory(
                    title: 'Di Dapur',
                    icon: Icons.restaurant,
                    color: Colors.orange,
                    tips: [
                      _TipItem(
                        icon: Icons.shopping_basket,
                        title: 'Belanja Cerdas',
                        description:
                            'Bawa tas belanja sendiri. Beli produk lokal dan musiman. Hindari kemasan berlebihan.',
                      ),
                      _TipItem(
                        icon: Icons.food_bank,
                        title: 'Kurangi Limbah Makanan',
                        description:
                            'Rencanakan menu mingguan. Simpan makanan dengan benar. Manfaatkan sisa makanan untuk resep baru.',
                      ),
                      _TipItem(
                        icon: Icons.compost,
                        title: 'Kompos',
                        description:
                            'Buat kompos dari sisa sayuran dan buah. Gunakan untuk pupuk tanaman. Kurangi sampah organik.',
                      ),
                      _TipItem(
                        icon: Icons.no_meals,
                        title: 'Kurangi Daging',
                        description:
                            'Coba hari tanpa daging (Meatless Monday). Produksi daging menghasilkan emisi gas rumah kaca tinggi.',
                      ),
                    ],
                  ),

                  _buildTipsCategory(
                    title: 'Transportasi',
                    icon: Icons.directions_bike,
                    color: Colors.blue,
                    tips: [
                      _TipItem(
                        icon: Icons.directions_walk,
                        title: 'Jalan Kaki atau Sepeda',
                        description:
                            'Untuk jarak dekat, jalan kaki atau bersepeda. Sehat untuk tubuh dan lingkungan!',
                      ),
                      _TipItem(
                        icon: Icons.directions_bus,
                        title: 'Transportasi Umum',
                        description:
                            'Gunakan bus, kereta, atau angkot. Satu bus bisa menggantikan 40 mobil di jalan.',
                      ),
                      _TipItem(
                        icon: Icons.people,
                        title: 'Carpooling',
                        description:
                            'Berbagi kendaraan dengan teman sekantor atau tetangga. Hemat biaya dan kurangi polusi.',
                      ),
                      _TipItem(
                        icon: Icons.build,
                        title: 'Perawatan Kendaraan',
                        description:
                            'Servis rutin kendaraan. Ban dengan tekanan tepat menghemat bahan bakar hingga 3%.',
                      ),
                    ],
                  ),

                  _buildTipsCategory(
                    title: 'Berbelanja',
                    icon: Icons.shopping_cart,
                    color: Colors.purple,
                    tips: [
                      _TipItem(
                        icon: Icons.shopping_bag,
                        title: 'Tas Kain',
                        description:
                            'Selalu bawa tas belanja kain. Satu tas kain bisa menggantikan ribuan kantong plastik.',
                      ),
                      _TipItem(
                        icon: Icons.water,
                        title: 'Botol Isi Ulang',
                        description:
                            'Gunakan botol minum yang bisa diisi ulang. Hindari membeli air kemasan sekali pakai.',
                      ),
                      _TipItem(
                        icon: Icons.label,
                        title: 'Baca Label',
                        description:
                            'Pilih produk dengan label ramah lingkungan. Hindari produk dengan bahan kimia berbahaya.',
                      ),
                      _TipItem(
                        icon: Icons.favorite,
                        title: 'Produk Lokal',
                        description:
                            'Beli produk lokal untuk kurangi jejak karbon dari transportasi. Dukung ekonomi lokal!',
                      ),
                    ],
                  ),

                  _buildTipsCategory(
                    title: 'Teknologi & Kerja',
                    icon: Icons.computer,
                    color: Colors.indigo,
                    tips: [
                      _TipItem(
                        icon: Icons.print_disabled,
                        title: 'Paperless',
                        description:
                            'Kurangi mencetak dokumen. Gunakan file digital. Jika harus cetak, gunakan kedua sisi kertas.',
                      ),
                      _TipItem(
                        icon: Icons.mail_outline,
                        title: 'Email Efisien',
                        description:
                            'Hapus email lama dan unsubscribe newsletter yang tidak perlu. Penyimpanan cloud juga butuh energi!',
                      ),
                      _TipItem(
                        icon: Icons.power_settings_new,
                        title: 'Mode Hemat Energi',
                        description:
                            'Aktifkan mode hemat energi di laptop dan HP. Cabut charger saat baterai penuh.',
                      ),
                      _TipItem(
                        icon: Icons.recycling,
                        title: 'E-waste',
                        description:
                            'Jangan buang elektronik ke tempat sampah biasa. Bawa ke pusat daur ulang e-waste.',
                      ),
                    ],
                  ),

                  _buildTipsCategory(
                    title: 'Kebun & Halaman',
                    icon: Icons.yard,
                    color: Colors.lightGreen,
                    tips: [
                      _TipItem(
                        icon: Icons.park,
                        title: 'Tanam Pohon',
                        description:
                            'Tanam pohon atau tanaman di halaman. Satu pohon menyerap 22 kg CO2 per tahun.',
                      ),
                      _TipItem(
                        icon: Icons.grass,
                        title: 'Taman Organik',
                        description:
                            'Buat kebun sayur sendiri. Gunakan pupuk organik, hindari pestisida kimia.',
                      ),
                      _TipItem(
                        icon: Icons.water_drop,
                        title: 'Siram Pagi/Sore',
                        description:
                            'Siram tanaman pagi atau sore hari. Kurangi penguapan, hemat air.',
                      ),
                      _TipItem(
                        icon: Icons.wb_sunny,
                        title: 'Tanaman Lokal',
                        description:
                            'Pilih tanaman asli daerah. Lebih tahan terhadap iklim lokal, butuh perawatan minimal.',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Challenge Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.green.shade400, Colors.teal.shade400],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Icon(Icons.emoji_events, size: 56, color: Colors.white),
                    const SizedBox(height: 16),
                    const Text(
                      'Tantangan 30 Hari!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Pilih 3 tips di atas dan lakukan setiap hari selama sebulan. '
                      'Kebiasaan kecil akan menjadi perubahan besar!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: const EcoBottomNav(),
    );
  }

  Widget _buildTipsCategory({
    required String title,
    required IconData icon,
    required Color color,
    required List<_TipItem> tips,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Category Header
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: Colors.white, size: 28),
                ),
                const SizedBox(width: 16),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
          // Tips List
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: tips.map((tip) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: color.withOpacity(0.2), width: 1),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(tip.icon, color: color, size: 24),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tip.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              tip.description,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade600,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _TipItem {
  final IconData icon;
  final String title;
  final String description;

  _TipItem({
    required this.icon,
    required this.title,
    required this.description,
  });
}
