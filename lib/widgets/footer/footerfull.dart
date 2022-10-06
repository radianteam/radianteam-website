import 'package:flutter/material.dart';

class FooterFull extends StatelessWidget {
  const FooterFull({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 5),
        color: Colors.black,
        child: DefaultTextStyle.merge(
          style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              decoration: TextDecoration.none),
          textAlign: TextAlign.left,
          child: Column(
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Framework",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(height: 15),
                        Text("Architecture"),
                        SizedBox(height: 10),
                        Text("Documentation"),
                        SizedBox(height: 10),
                        Text("Examples"),
                        SizedBox(height: 35),
                        Text(
                          "Components",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(height: 15),
                        Text("Notifications"),
                        SizedBox(height: 10),
                        Text("API Gateway"),
                        SizedBox(height: 10),
                        Text("Heasless CMS"),
                        SizedBox(height: 10),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Projects",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        SizedBox(height: 15),
                        Text("Learning Management System"),
                        SizedBox(height: 10),
                        Text("Learning experience platform"),
                        SizedBox(height: 10),
                        Text("Super App"),
                        SizedBox(height: 10),
                        Text("Smart Assistant"),
                        SizedBox(height: 10),
                        Text("Open DVR"),
                        SizedBox(height: 10),
                        Text("Multiagent System"),
                        SizedBox(height: 35)
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Non-commercial",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(height: 35),
                                Text(
                                  "Roadmap",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            const SizedBox(width: 35),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Team",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(height: 35),
                                Text(
                                  "Contact us",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.email,
                              color: Colors.white,
                              size: 32,
                            ),
                            SizedBox(width: 15),
                            Icon(
                              Icons.discord,
                              color: Colors.white,
                              size: 32,
                            ),
                            SizedBox(width: 15),
                            Icon(
                              Icons.telegram,
                              color: Colors.white,
                              size: 32,
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer()
                  ]),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  "Radian Team, 2022",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      decoration: TextDecoration.none),
                ),
              )
            ],
          ),
        ));
  }
}
