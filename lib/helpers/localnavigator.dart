import 'package:flutter/material.dart';
import 'package:radianteam_website/constants/controllers.dart';
import 'package:radianteam_website/routing/router.dart';
import 'dart:html';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: window.location.hash.substring(1),
      onGenerateRoute: generateRoute,
    );
