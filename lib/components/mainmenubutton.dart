import 'package:flutter/material.dart';

class MainMenuButton extends StatefulWidget {
  final String text;
  final List<String>? items;
  final String? route;
  late final Widget subMenu;

  MainMenuButton({super.key, required this.text, this.items, this.route}) {
    if (items != null) {
      List<Widget> sbmnu = [];
      for (var i = 0; i < ((items?.length) ?? 0); i++) {
        sbmnu.add(InkWell(
          child: Padding(
              padding: const EdgeInsets.all(15), child: Text(items![i])),
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
  bool isSubMenuHover = false;
  bool isMenuShown = false;

  final LayerLink layerLink = LayerLink();
  OverlayEntry? overlayEntry;

  void controllSubMenu() {
    if (isHover || isSubMenuHover) {
      if (!isMenuShown) {
        if (widget.items != null) {
          RenderBox box = context.findRenderObject() as RenderBox;
          Offset position = box.localToGlobal(Offset.zero);

          overlayEntry = OverlayEntry(
            builder: (BuildContext context) {
              return Positioned(
                  top: position.dy + box.size.height,
                  left: position.dx,
                  child: Material(
                      child: InkWell(
                    onTap: () {},
                    onHover: (val) {
                      setState(() {
                        isSubMenuHover = val;
                      });

                      controllSubMenu();
                    },
                    child: widget.subMenu,
                  )));
            },
          );

          isMenuShown = true;

          Overlay.of(context)!.insert(overlayEntry!);
        }
      }
    } else {
      overlayEntry?.remove();
      isMenuShown = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.grey,
      onHover: (val) {
        setState(() {
          isHover = val;
        });

        controllSubMenu();
      },
      onTap: () {
        if (widget.route != null) {
          Navigator.pushNamed(context, widget.route ?? '/');
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(widget.text),
      ),
    );
  }
}
