import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';

class EcoDrawer extends StatelessWidget {
  const EcoDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF1F8F4), Color(0xFFE8F5E9)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF66BB6A), Color(0xFF81C784)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(Icons.eco, size: 48, color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Edukasi Lingkungan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '🌍 Jaga Bumi, Jaga Masa Depan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            _buildDrawerItem(
              icon: Icons.home_rounded,
              title: 'Home',
              route: Routes.HOME,
              gradient: const LinearGradient(
                colors: [Color(0xFF66BB6A), Color(0xFF81C784)],
              ),
            ),
            _buildDrawerItem(
              icon: Icons.lightbulb_outline_rounded,
              title: 'Fakta Menarik',
              route: Routes.FAKTA_MENARIK,
              gradient: const LinearGradient(
                colors: [Color(0xFFFFB74D), Color(0xFFFFD54F)],
              ),
            ),
            _buildDrawerItem(
              icon: Icons.recycling_rounded,
              title: 'Cara Daur Ulang',
              route: Routes.CARA_DAUR_ULANG,
              gradient: const LinearGradient(
                colors: [Color(0xFF64B5F6), Color(0xFF81D4FA)],
              ),
            ),
            _buildDrawerItem(
              icon: Icons.energy_savings_leaf_rounded,
              title: 'Tips Go Green',
              route: Routes.TIPS_GO_GREEN,
              gradient: const LinearGradient(
                colors: [Color(0xFF26A69A), Color(0xFF4DB6AC)],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Divider(),
            ),
            _buildDrawerItem(
              icon: Icons.info_outline_rounded,
              title: 'Tentang Aplikasi',
              route: Routes.TENTANG_APLIKASI,
              gradient: const LinearGradient(
                colors: [Color(0xFF90A4AE), Color(0xFFB0BEC5)],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFF81C784), width: 2),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF66BB6A),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        'Mari jaga bumi kita bersama! 🌱',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2E7D32),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required String route,
    required Gradient gradient,
  }) {
    final currentRoute = Get.currentRoute;
    final isSelected = currentRoute == route;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          gradient: isSelected ? gradient : null,
          color: isSelected ? null : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isSelected
                  ? Colors.white.withOpacity(0.3)
                  : Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: isSelected ? Colors.white : const Color(0xFF66BB6A),
              size: 22,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              color: isSelected ? Colors.white : const Color(0xFF2E7D32),
            ),
          ),
          onTap: () {
            Get.back();
            if (!isSelected) {
              Get.toNamed(route);
            }
          },
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
        ),
      ),
    );
  }
}
