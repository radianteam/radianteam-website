import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class LandingBanner extends StatelessWidget {
  final String caption;
  final String description;
  final String buttonText;
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
      this.textColor});

  @override
  Widget build(BuildContext context) {
    double baseSize = MediaQuery.of(context).size.width / 3;

    return Container(
      decoration: decoration,
      child: Row(
        children: [
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: baseSize / 6,
              ),
              Text(
                caption,
                style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: baseSize / 10,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: baseSize / 10,
              ),
              Text(
                description,
                style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontSize: baseSize / 25,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: baseSize / 10,
              ),
              Material(
                  borderRadius: BorderRadius.circular(baseSize / 37),
                  child: Padding(
                      padding: EdgeInsets.all(baseSize / 25),
                      child: Text(
                        buttonText,
                        style: TextStyle(
                            color: Colors.black, fontSize: baseSize / 20),
                      ))),
              SizedBox(
                height: baseSize / 6,
              )
            ],
          ),
          const Spacer(),
          Padding(
              padding: EdgeInsets.fromLTRB(
                  baseSize / 20, baseSize / 20, 0, baseSize / 20),
              child: SvgPicture.asset(picture,
                  width: baseSize / 1.2, color: Colors.white)),
          const Spacer()
        ],
      ),
    );
  }
}
