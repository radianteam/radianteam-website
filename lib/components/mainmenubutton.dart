import 'package:flutter/material.dart';

class MainMenuButton extends StatefulWidget {
  final String text;
  final List<String>? items;
  late final Widget subMenu;

  MainMenuButton({super.key, required this.text, this.items}) {
    if (items != null) {
      List<Widget> sbmnu = [];
      for (var i = 0; i < ((items?.length) ?? 0); i++) {
        sbmnu.add(InkWell(
          child: Padding(
              padding: const EdgeInsets.all(10), child: Text(items![i])),
        ));
      }
      subMenu = Material(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: sbmnu,
      ));
    }
  }

  @override
  State<MainMenuButton> createState() => _MainMenuButtonState();
}

class _MainMenuButtonState extends State<MainMenuButton> {
  bool isHover = false;

  final LayerLink layerLink = LayerLink();
  OverlayEntry? overlayEntry;

  void showSubMenu() {
    if (widget.items != null) {
      RenderBox box = context.findRenderObject() as RenderBox;
      Offset position =
          box.localToGlobal(Offset.zero); //this is global position

      overlayEntry = OverlayEntry(
        builder: (BuildContext context) {
          return Positioned(
            top: position.dy + box.size.height,
            left: position.dx,
            child: widget.subMenu,
          );
        },
      );

      Overlay.of(context)!.insert(overlayEntry!);
    }
  }

  void hideSubMenu() {
    overlayEntry?.remove();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.grey,
      onHover: (val) {
        if (val) {
          showSubMenu();
        } else {
          hideSubMenu();
        }

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
