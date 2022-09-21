import 'package:flutter/material.dart';

class MainMenuButton extends StatefulWidget {
  final String text;

  const MainMenuButton({super.key, required this.text});

  @override
  State<MainMenuButton> createState() => _MainMenuButtonState();
}

class _MainMenuButtonState extends State<MainMenuButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.grey,
      onHover: (val) {
        setState(() {
          isHover = val;
        });
      },
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(widget.text),
      ),
    );
  }
}
