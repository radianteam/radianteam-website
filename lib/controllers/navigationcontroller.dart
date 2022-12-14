import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:html' as html;

class NavigationController extends GetxController {
  static NavigationController instance = Get.find();

  final GlobalKey<NavigatorState> navigationKey = GlobalKey();

  Future<dynamic> navigateTo(String title, String routeName) {
    // TODO: refactor!
    html.window.history.pushState(null, 'home', '#$routeName');

    return navigationKey.currentState!.pushNamed(routeName);
  }

  goBack() => navigationKey.currentState!.pop();

  var activeItem = "".obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHover(String itemName) => hoverItem.value == itemName;
}
