import 'package:flutter/material.dart';

import 'package:radianteam_website/widgets/footer/footerfull.dart';

class ContactUsPage extends StatelessWidget {
  static const String title = 'Contact us';
  static const String route = '/contactus';

  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Contact us",
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: const [Text('Contact us'), FooterFull()],
        )));
  }
}
