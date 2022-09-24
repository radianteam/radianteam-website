import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainMenuButton extends StatefulWidget {
  final String? icon;
  final String? text;
  final List<String>? items;
  final String? route;
  late final List<Widget> sbmnu = [];
  late final double maxWidth;

  MainMenuButton({super.key, this.text, this.icon, this.items, this.route}) {
    double mw = 0;
    for (var i = 0; i < ((items?.length) ?? 0); i++) {
      TextPainter textPainter = TextPainter(
          text: TextSpan(text: items![i]),
          maxLines: 1,
          textDirection: TextDirection.ltr)
        ..layout(minWidth: 0, maxWidth: double.infinity);

      if (mw < textPainter.size.width) {
        mw = textPainter.size.width;
      }

      sbmnu.add(InkWell(
        onTap: () {},
        onHover: (value) {},
        hoverColor: Colors.grey,
        child:
            Padding(padding: const EdgeInsets.all(15), child: Text(items![i])),
      ));
    }

    maxWidth = mw;
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
    if (widget.items != null) {
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
                    width: widget.maxWidth + 30,
                    child: Material(
                        child: InkWell(
                      onTap: () {},
                      onHover: (val) {
                        setState(() {
                          isSubMenuHover = val;
                        });

                        controllSubMenu();
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: widget.sbmnu,
                      ),
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
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: (isHover || isSubMenuHover) ? Colors.grey : Colors.white,
        child: InkWell(
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
            child: (widget.icon != null)
                ? (widget.text != null)
                    ? Row(
                        children: [
                          SvgPicture.asset(
                            widget.icon!,
                            width: 25,
                            clipBehavior: Clip.none,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(widget.text!)
                        ],
                      )
                    : SvgPicture.asset(
                        widget.icon!,
                        width: 25,
                        clipBehavior: Clip.none,
                      )
                : Text(widget.text!),
          ),
        ));
  }
}
