import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';

class EcoBottomNav extends StatelessWidget {
  const EcoBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = Get.currentRoute;
    final currentIndex = _getCurrentIndex(currentRoute);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          final route = _getRouteFromIndex(index);
          Get.toNamed(route);
        },
        selectedItemColor: const Color(0xFF66BB6A),
        unselectedItemColor: Colors.grey.shade400,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedFontSize: 12,
        unselectedFontSize: 11,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        items: [
          _buildBottomNavItem(
            icon: Icons.home_rounded,
            label: 'Home',
            isSelected: currentIndex == 0,
          ),
          _buildBottomNavItem(
            icon: Icons.lightbulb_outline_rounded,
            label: 'Fakta',
            isSelected: currentIndex == 1,
          ),
          _buildBottomNavItem(
            icon: Icons.recycling_rounded,
            label: 'Daur Ulang',
            isSelected: currentIndex == 2,
          ),
          _buildBottomNavItem(
            icon: Icons.energy_savings_leaf_rounded,
            label: 'Tips',
            isSelected: currentIndex == 3,
          ),
          _buildBottomNavItem(
            icon: Icons.info_outline_rounded,
            label: 'Tentang',
            isSelected: currentIndex == 4,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem({
    required IconData icon,
    required String label,
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xFF66BB6A).withOpacity(0.15)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, size: 24),
      ),
      label: label,
    );
  }

  int _getCurrentIndex(String route) {
    switch (route) {
      case Routes.HOME:
        return 0;
      case Routes.FAKTA_MENARIK:
        return 1;
      case Routes.CARA_DAUR_ULANG:
        return 2;
      case Routes.TIPS_GO_GREEN:
        return 3;
      case Routes.TENTANG_APLIKASI:
        return 4;
      default:
        return 0;
    }
  }

  String _getRouteFromIndex(int index) {
    switch (index) {
      case 0:
        return Routes.HOME;
      case 1:
        return Routes.FAKTA_MENARIK;
      case 2:
        return Routes.CARA_DAUR_ULANG;
      case 3:
        return Routes.TIPS_GO_GREEN;
      case 4:
        return Routes.TENTANG_APLIKASI;
      default:
        return Routes.HOME;
    }
  }
}
