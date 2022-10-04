import 'package:flutter/material.dart';
import 'package:radianteam_website/constants/controllers.dart';
import 'package:radianteam_website/pages/main/main.dart';
import 'package:radianteam_website/routing/router.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: MainPage.route,
      onGenerateRoute: generateRoute,
    );
