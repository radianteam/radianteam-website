import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:html' as html;

class LandingBanner extends StatelessWidget {
  final String caption;
  final String description;
  final String buttonText;
  final String? buttonExternalLink;
  final String picture;
  final Decoration? decoration;
  final Color? textColor;

  const LandingBanner(
      {super.key,
      required this.caption,
      required this.description,
      required this.buttonText,
      required this.picture,
      this.decoration,
      this.textColor,
      this.buttonExternalLink});

  @override
  Widget build(BuildContext context) {
    double baseSizeW = MediaQuery.of(context).size.width / 3;

    return Container(
      decoration: decoration,
      child: Row(
        children: [
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: baseSizeW / 6,
              ),
              SizedBox(
                width: baseSizeW * 1.3,
                child: Text(
                  caption,
                  style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: baseSizeW / 10,
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: baseSizeW / 10,
              ),
              SizedBox(
                width: baseSizeW * 1.3,
                child: Text(
                  description,
                  style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: baseSizeW / 25,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: baseSizeW / 10,
              ),
              Material(
                  borderRadius: BorderRadius.circular(baseSizeW / 37),
                  child: InkWell(
                    onTap: (() {
                      html.window.open(buttonExternalLink!, 'new tab');
                    }),
                    child: Padding(
                        padding: EdgeInsets.all(baseSizeW / 25),
                        child: Text(
                          buttonText,
                          style: TextStyle(
                              color: Colors.black, fontSize: baseSizeW / 20),
                        )),
                  )),
              SizedBox(
                height: baseSizeW / 6,
              )
            ],
          ),
          const Spacer(),
          Padding(
              padding: EdgeInsets.fromLTRB(
                  baseSizeW / 20, baseSizeW / 20, 0, baseSizeW / 20),
              child: SvgPicture.asset(picture,
                  width: baseSizeW / 1.2, color: Colors.white)),
          const Spacer()
        ],
      ),
    );
  }
}
