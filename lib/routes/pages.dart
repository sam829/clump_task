import 'package:clump_task/modules/splash/splash.dart';
import 'package:clump_task/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

final List<GetPage> pages = [
  GetPage(
    name: Routes.splash,
    page: () => const SplashScreen(),
  )
];
