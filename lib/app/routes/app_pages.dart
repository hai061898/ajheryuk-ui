
import 'package:ajheryuk/app/modules/home/home_view.dart';
import 'package:ajheryuk/app/modules/login/login_view.dart';
import 'package:ajheryuk/app/modules/welcome/welcome_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>const HomeView(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () =>const WelcomeView(),
      // binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () =>const LoginView(),
      // binding: LoginBinding(),
    ),
  ];
}