import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/topbar.dart';

class ContactUsPage extends StatelessWidget {
  static const String route = '/contactus';

  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(),
        const Text('Contact us'),
        Expanded(
            child: Container(
          color: Colors.green,
        ))
      ],
    );
  }
}
