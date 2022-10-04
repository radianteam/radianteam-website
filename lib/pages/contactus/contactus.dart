import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  static const String title = 'Contact us';
  static const String route = '/contactus';

  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Contact us'),
        Expanded(
            child: Container(
          color: Colors.green,
        ))
      ],
    );
  }
}
