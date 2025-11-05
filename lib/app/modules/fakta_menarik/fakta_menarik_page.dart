import 'package:flutter/material.dart';
import '../../widgets/eco_app_bar.dart';
import '../../widgets/eco_drawer.dart';
import '../../widgets/eco_bottom_nav.dart';

class FaktaMenarikPage extends StatelessWidget {
  const FaktaMenarikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EcoAppBar(title: 'Fakta Menarik'),
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
                  colors: [Color(0xFFFFB74D), Color(0xFFFFD54F)],
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
                      Icons.lightbulb,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '💡 Fakta Menarik 💡',
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
                      'Tahukah kamu tentang fakta-fakta ini?',
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

            // Facts
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _buildFactCard(
                    icon: Icons.shopping_bag,
                    title: 'Kantong Plastik',
                    description:
                        'Satu kantong plastik membutuhkan waktu 500-1000 tahun untuk terurai sempurna di alam! Bayangkan, plastik yang kamu buang hari ini masih akan ada hingga 50 generasi mendatang.',
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFFEBEE), Colors.white],
                    ),
                    iconColor: const Color(0xFFEF5350),
                  ),

                  _buildFactCard(
                    icon: Icons.local_drink,
                    title: 'Botol Plastik',
                    description:
                        'Setiap menit, 1 juta botol plastik dibeli di seluruh dunia. Hanya 9% dari semua plastik yang pernah diproduksi telah didaur ulang. Sisanya? Berakhir di lautan dan TPA.',
                    gradient: const LinearGradient(
                      colors: [Color(0xFFE3F2FD), Colors.white],
                    ),
                    iconColor: const Color(0xFF42A5F5),
                  ),

                  _buildFactCard(
                    icon: Icons.forest,
                    title: 'Hutan Hujan',
                    description:
                        'Hutan hujan menghasilkan 20% oksigen dunia, tapi setiap menitnya seluas 40 lapangan sepak bola hutan hilang karena penebangan. Kita kehilangan 137 spesies setiap harinya!',
                    gradient: const LinearGradient(
                      colors: [Color(0xFFE8F5E9), Colors.white],
                    ),
                    iconColor: const Color(0xFF66BB6A),
                  ),

                  _buildFactCard(
                    icon: Icons.water_drop,
                    title: 'Air Bersih',
                    description:
                        'Hanya 2.5% air di Bumi yang merupakan air tawar, dan kurang dari 1% dapat diakses manusia. Satu keran yang bocor dapat membuang 15 liter air per hari!',
                    gradient: const LinearGradient(
                      colors: [Color(0xFFE0F7FA), Colors.white],
                    ),
                    iconColor: const Color(0xFF26C6DA),
                  ),

                  _buildFactCard(
                    icon: Icons.ac_unit,
                    title: 'Es Kutub',
                    description:
                        'Es di Arktik mencair 13% per dekade. Jika semua es di Greenland mencair, permukaan air laut akan naik 7 meter dan menenggelamkan banyak kota pesisir!',
                    gradient: const LinearGradient(
                      colors: [Color(0xFFE1F5FE), Colors.white],
                    ),
                    iconColor: const Color(0xFF29B6F6),
                  ),

                  _buildFactCard(
                    icon: Icons.restaurant,
                    title: 'Limbah Makanan',
                    description:
                        'Sepertiga dari semua makanan yang diproduksi di dunia terbuang sia-sia. Di Indonesia, setiap orang membuang rata-rata 300 kg makanan per tahun!',
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFFF3E0), Colors.white],
                    ),
                    iconColor: const Color(0xFFFFB74D),
                  ),

                  _buildFactCard(
                    icon: Icons.pets,
                    title: 'Satwa Liar',
                    description:
                        'Populasi satwa liar global telah menurun 68% sejak 1970. Setiap tahun, 100.000 hewan laut mati karena memakan atau terjerat plastik.',
                    gradient: const LinearGradient(
                      colors: [Color(0xFFF3E5F5), Colors.white],
                    ),
                    iconColor: const Color(0xFFAB47BC),
                  ),

                  _buildFactCard(
                    icon: Icons.wb_sunny,
                    title: 'Energi Matahari',
                    description:
                        'Energi matahari yang mencapai Bumi dalam 1 jam sudah cukup untuk memenuhi kebutuhan energi dunia selama 1 tahun! Namun kita baru memanfaatkan kurang dari 1% nya.',
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFFF9C4), Colors.white],
                    ),
                    iconColor: const Color(0xFFFFA726),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Call to Action
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFE8F5E9), Color(0xFFC8E6C9)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.shade200,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF66BB6A),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.eco,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Fakta ini mengingatkan kita betapa pentingnya tindakan kecil sehari-hari untuk melindungi planet kita! 🌍',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade800,
                          height: 1.6,
                          fontWeight: FontWeight.w600,
                        ),
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

  Widget _buildFactCard({
    required IconData icon,
    required String title,
    required String description,
    required Gradient gradient,
    required Color iconColor,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: iconColor.withOpacity(0.3), width: 2),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: iconColor.withOpacity(0.5), width: 2),
            ),
            child: Icon(icon, size: 32, color: iconColor),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800,
                    letterSpacing: 0.3,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade700,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
