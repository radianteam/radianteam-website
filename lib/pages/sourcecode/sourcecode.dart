import 'package:flutter/material.dart';

class SourceCodePage extends StatelessWidget {
  static const String title = 'Source code';
  static const String route = '/sourcecode';

  const SourceCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Source code",
        color: Colors.white,
        child: Column(
          children: [
            const Text('Source code'),
            Expanded(
                child: Container(
              color: Colors.white,
            ))
          ],
        ));
  }
}
