import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class LandingBanner extends StatelessWidget {
  final String caption;
  final String description;
  final String buttonText;
  final String picture;

  const LandingBanner(
      {super.key,
      required this.caption,
      required this.description,
      required this.buttonText,
      required this.picture});

  @override
  Widget build(BuildContext context) {
    double baseSize = MediaQuery.of(context).size.width / 3;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 101, 16, 161),
            Color.fromARGB(255, 144, 57, 206)
          ])),
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
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 46,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: baseSize / 10,
              ),
              Text(
                description,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: baseSize / 10,
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.white),
                      fixedSize:
                          MaterialStatePropertyAll<Size>(Size.fromHeight(50))),
                  onPressed: () {},
                  child: Text(
                    buttonText,
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  )),
              SizedBox(
                height: baseSize / 6,
              )
            ],
          ),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.fromLTRB(50, 50, 0, 50),
              child: SvgPicture.asset(picture,
                  width: baseSize / 1.2, color: Colors.white)),
          const Spacer()
        ],
      ),
    );
  }
}
