import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radianteam_website/widgets/topbar.dart';

class MainPage extends StatelessWidget {
  static const String route = '/';

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseSize = MediaQuery.of(context).size.width / 3;

    return Column(children: [
      const TopBar(),
      Container(
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
                const Text(
                  'Cloud native framework,\nlibraries and projects',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 46,
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: baseSize / 10,
                ),
                const Text(
                  'Try nanoservice framework, use ready-made components,\nenjoy our projects, join our community!',
                  style: TextStyle(
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
                        fixedSize: MaterialStatePropertyAll<Size>(
                            Size.fromHeight(50))),
                    onPressed: () {},
                    child: const Text(
                      'Contact us',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )),
                SizedBox(
                  height: baseSize / 6,
                )
              ],
            ),
            const Spacer(),
            Padding(
                padding: const EdgeInsets.fromLTRB(50, 50, 0, 50),
                child: SvgPicture.asset(
                  'images/banner_bird.svg',
                  width: baseSize / 1.2,
                  color: Colors.white,
                )),
            const Spacer()
          ],
        ),
      )
    ]);
  }
}
