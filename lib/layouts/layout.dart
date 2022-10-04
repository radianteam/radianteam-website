import 'package:flutter/material.dart';
import 'package:radianteam_website/helpers/responsive.dart';
import 'package:radianteam_website/layouts/full.dart';
import 'package:radianteam_website/layouts/medium.dart';
import 'package:radianteam_website/layouts/small.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
        full: FullLayout(), medium: FullLayout(), small: FullLayout());
  }
}
