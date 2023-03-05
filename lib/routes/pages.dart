import 'package:clump_task/modules/log_in/log_in_page.dart';
import 'package:clump_task/modules/splash/splash.dart';
import 'package:clump_task/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

final List<GetPage> pages = [
  GetPage(
    name: Routes.splash,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: Routes.logIn,
    page: () => const LogInScreen(),
  )
];
