import 'package:flutter/material.dart';

const int largeScreenSize = 1280;
const int mediumScreenSize = 800;

class ResponsiveWidget extends StatelessWidget {
  final Widget full;
  final Widget? medium;
  final Widget? small;

  const ResponsiveWidget(
      {super.key, required this.full, this.medium, this.small});

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize ||
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth < mediumScreenSize) {
        return small ?? full;
      }

      if (constraints.maxWidth < largeScreenSize) {
        return medium ?? full;
      }

      return full;
    }));
  }
}
