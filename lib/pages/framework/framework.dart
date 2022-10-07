import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/footer/footerfull.dart';

class FrameworkPage extends StatelessWidget {
  static const String title = 'Framework';
  static const String route = '/framework';

  const FrameworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.white,
      title: "Framework",
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                color: Colors.white,
                child: const Center(
                    child: Text('Framework',
                        style: TextStyle(
                          backgroundColor: Colors.white,
                        )))),
            const FooterFull()
          ],
        ),
      ),
    );
  }
}
