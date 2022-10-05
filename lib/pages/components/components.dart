import 'package:flutter/material.dart';

class ComponentsPage extends StatelessWidget {
  static const String title = 'Components';
  static const String route = '/components';

  const ComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Components",
        color: Colors.white,
        child: Column(
          children: [
            const Text('Components'),
            Expanded(
                child: Container(
              color: Colors.grey,
            ))
          ],
        ));
  }
}
