import 'package:flutter/material.dart';

class MenuItem {
  final String? icon;
  final String text;
  final String? route;
  final List<MenuItem>? children;

  MenuItem({this.icon, required this.text, this.route, this.children});
}

class MainMenu extends StatelessWidget {
  final List<MenuItem> items;

  const MainMenu({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: double.infinity,
        child: Container(
          color: Colors.red,
        ));
  }
}
