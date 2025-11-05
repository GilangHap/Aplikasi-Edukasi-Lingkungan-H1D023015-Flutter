import 'package:flutter/material.dart';
import '../../widgets/eco_app_bar.dart';
import '../../widgets/eco_drawer.dart';
import '../../widgets/eco_bottom_nav.dart';

class CaraDaurUlangPage extends StatelessWidget {
  const CaraDaurUlangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EcoAppBar(title: 'Cara Daur Ulang'),
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
                  colors: [Color(0xFF64B5F6), Color(0xFF81D4FA)],
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
                      Icons.recycling,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '♻️ Panduan Daur Ulang ♻️',
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
                      'Langkah mudah untuk mendaur ulang sampah',
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

            // 3R Principle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Prinsip 3R',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 16),

                  _buildPrincipleCard(
                    number: '1',
                    title: 'REDUCE (Kurangi)',
                    icon: Icons.remove_circle_outline,
                    color: Colors.red,
                    items: [
                      'Kurangi penggunaan barang sekali pakai',
                      'Bawa tas belanja sendiri',
                      'Gunakan botol minum isi ulang',
                      'Hindari kemasan berlebihan',
                      'Cetak dokumen hanya jika perlu',
                    ],
                  ),

                  _buildPrincipleCard(
                    number: '2',
                    title: 'REUSE (Gunakan Kembali)',
                    icon: Icons.refresh,
                    color: Colors.orange,
                    items: [
                      'Gunakan kembali kantong plastik',
                      'Isi ulang botol air minum',
                      'Donasikan barang yang masih layak',
                      'Gunakan wadah makanan yang bisa dicuci',
                      'Kreatif membuat kerajinan dari barang bekas',
                    ],
                  ),

                  _buildPrincipleCard(
                    number: '3',
                    title: 'RECYCLE (Daur Ulang)',
                    icon: Icons.recycling,
                    color: Colors.green,
                    items: [
                      'Pisahkan sampah organik dan anorganik',
                      'Bersihkan kemasan sebelum didaur ulang',
                      'Kirim sampah ke bank sampah',
                      'Kompos sampah organik',
                      'Daur ulang kertas, plastik, dan logam',
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Recycling Guide by Material
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Panduan Daur Ulang Berdasarkan Jenis',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 16),

                  _buildMaterialGuide(
                    icon: Icons.description,
                    title: 'Kertas & Kardus',
                    color: Colors.brown,
                    description:
                        'Kumpulkan kertas bekas, kardus, koran. Pastikan kering dan tidak kotor. Lipat atau sobek agar tidak memakan banyak tempat.',
                  ),

                  _buildMaterialGuide(
                    icon: Icons.local_drink,
                    title: 'Plastik',
                    color: Colors.blue,
                    description:
                        'Bilas botol plastik bekas. Pisahkan tutup botol. Cek kode daur ulang (1-7) di bawah kemasan. Jenis 1, 2, dan 5 paling mudah didaur ulang.',
                  ),

                  _buildMaterialGuide(
                    icon: Icons.wb_incandescent,
                    title: 'Kaca',
                    color: Colors.teal,
                    description:
                        'Botol dan toples kaca bisa didaur ulang berkali-kali. Bersihkan dari sisa makanan. Pisahkan tutup logam atau plastik.',
                  ),

                  _buildMaterialGuide(
                    icon: Icons.construction,
                    title: 'Logam',
                    color: Colors.grey,
                    description:
                        'Kaleng minuman, tutup botol, dan kemasan logam bisa didaur ulang. Bilas dan keringkan sebelum dikumpulkan.',
                  ),

                  _buildMaterialGuide(
                    icon: Icons.smartphone,
                    title: 'Elektronik',
                    color: Colors.purple,
                    description:
                        'Jangan buang ke tempat sampah biasa! Bawa ke pusat daur ulang elektronik. Hapus data pribadi terlebih dahulu.',
                  ),

                  _buildMaterialGuide(
                    icon: Icons.compost,
                    title: 'Organik',
                    color: Colors.green,
                    description:
                        'Sisa sayur, buah, daun kering bisa dijadikan kompos. Gunakan komposter atau lubang biopori di rumah.',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Tips
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.green.shade50, Colors.blue.shade50],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.green.shade200, width: 2),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.tips_and_updates,
                      size: 48,
                      color: Colors.green.shade700,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Tips Penting!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      '• Mulai dari yang mudah: pisahkan sampah basah dan kering\n'
                      '• Bersihkan kemasan sebelum didaur ulang\n'
                      '• Cari bank sampah atau TPS 3R terdekat\n'
                      '• Ajak keluarga dan tetangga untuk ikut serta\n'
                      '• Konsisten adalah kunci!',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                        height: 1.8,
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

  Widget _buildPrincipleCard({
    required String number,
    required String title,
    required IconData icon,
    required Color color,
    required List<String> items,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
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
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      number,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Row(
                    children: [
                      Icon(icon, color: color, size: 28),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.check_circle, size: 20, color: color),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          item,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade700,
                            height: 1.5,
                          ),
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

  Widget _buildMaterialGuide({
    required IconData icon,
    required String title,
    required Color color,
    required String description,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3), width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
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
  }
}
