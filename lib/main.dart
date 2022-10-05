import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radianteam_website/controllers/mainmenucontroller.dart';
import 'package:radianteam_website/controllers/navigationcontroller.dart';
import 'package:radianteam_website/helpers/notransitionbuilder.dart';
import 'package:radianteam_website/layouts/layout.dart';
import 'package:radianteam_website/pages/main/main.dart';
import 'package:radianteam_website/constants/controllers.dart';
import 'package:radianteam_website/routing/router.dart';

void main() {
  Get.put(MainMenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Radian",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          pageTransitionsTheme: PageTransitionsTheme(builders: {
        for (final platform in TargetPlatform.values)
          platform: const NoTransitionsBuilder()
      })),
      initialRoute: MainPage.route,
      builder: (context, child) => const SiteLayout(),
      navigatorKey: navigationController.navigationKey,
      onGenerateRoute: generateRoute,
    );
  }
}
