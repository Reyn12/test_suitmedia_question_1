import 'package:get/get.dart';

import '../modules/first_screen/bindings/first_screen_binding.dart';
import '../modules/first_screen/views/first_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/second_screen/bindings/second_screen_binding.dart';
import '../modules/second_screen/views/second_screen_view.dart';
import '../modules/third_screen/bindings/third_screen_binding.dart';
import '../modules/third_screen/views/third_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FIRST_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: _Paths.FIRST_SCREEN,
      page: () => const FirstScreenView(),
      binding: FirstScreenBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: _Paths.SECOND_SCREEN,
      page: () => const SecondScreenView(),
      binding: SecondScreenBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: _Paths.THIRD_SCREEN,
      page: () => const ThirdScreenView(),
      binding: ThirdScreenBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
  ];
}
