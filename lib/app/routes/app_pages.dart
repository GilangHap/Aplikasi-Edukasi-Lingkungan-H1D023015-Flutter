import 'package:get/get.dart';
import '../modules/home/home_page.dart';
import '../modules/fakta_menarik/fakta_menarik_page.dart';
import '../modules/cara_daur_ulang/cara_daur_ulang_page.dart';
import '../modules/tips_go_green/tips_go_green_page.dart';
import '../modules/tentang_aplikasi/tentang_aplikasi_page.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: Routes.HOME, page: () => const HomePage()),
    GetPage(name: Routes.FAKTA_MENARIK, page: () => const FaktaMenarikPage()),
    GetPage(
      name: Routes.CARA_DAUR_ULANG,
      page: () => const CaraDaurUlangPage(),
    ),
    GetPage(name: Routes.TIPS_GO_GREEN, page: () => const TipsGoGreenPage()),
    GetPage(
      name: Routes.TENTANG_APLIKASI,
      page: () => const TentangAplikasiPage(),
    ),
  ];
}

abstract class Routes {
  Routes._();

  static const HOME = '/home';
  static const FAKTA_MENARIK = '/fakta-menarik';
  static const CARA_DAUR_ULANG = '/cara-daur-ulang';
  static const TIPS_GO_GREEN = '/tips-go-green';
  static const TENTANG_APLIKASI = '/tentang-aplikasi';
}
