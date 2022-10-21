import 'dart:html';

import 'package:flutter/material.dart';
import 'package:radianteam_website/constants/controllers.dart';
import 'package:radianteam_website/pages/components/components.dart';
import 'package:radianteam_website/pages/contactus/contactus.dart';
import 'package:radianteam_website/pages/framework/framework.dart';
import 'package:radianteam_website/pages/noncommercial/noncommercial.dart';
import 'package:radianteam_website/pages/projects/projects.dart';
import 'package:radianteam_website/pages/roadmap/roadmap.dart';
import 'package:radianteam_website/pages/team/team.dart';

import 'package:radianteam_website/constants/common.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';

class FooterFull extends StatelessWidget {
  const FooterFull({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
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
                      SizedBox(
                        width: screenWidth * 0.1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => navigationController.navigateTo(
                                FrameworkPage.title, FrameworkPage.route),
                            child: const Text(
                              "Framework",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text("Architecture"),
                          const SizedBox(height: 10),
                          const Text("Documentation"),
                          const SizedBox(height: 10),
                          const Text("Examples"),
                          const SizedBox(height: 35),
                          InkWell(
                            onTap: () => navigationController.navigateTo(
                                ComponentsPage.title, ComponentsPage.route),
                            child: const Text(
                              "Components",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text("Notifications"),
                          const SizedBox(height: 10),
                          const Text("API Gateway"),
                          const SizedBox(height: 10),
                          const Text("Heasless CMS"),
                          const SizedBox(height: 10),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => navigationController.navigateTo(
                                ProjectsPage.title, ProjectsPage.route),
                            child: const Text(
                              "Projects",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text("Learning Management System"),
                          const SizedBox(height: 10),
                          const Text("Learning experience platform"),
                          const SizedBox(height: 10),
                          const Text("Super App"),
                          const SizedBox(height: 10),
                          const Text("Smart Assistant"),
                          const SizedBox(height: 10),
                          const Text("Open DVR"),
                          const SizedBox(height: 10),
                          const Text("Multiagent System"),
                          const SizedBox(height: 35)
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
                                children: [
                                  InkWell(
                                    onTap: () =>
                                        navigationController.navigateTo(
                                            NonCommercialPage.title,
                                            NonCommercialPage.route),
                                    child: const Text(
                                      "Non-commercial",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  const SizedBox(height: 35),
                                  InkWell(
                                    onTap: () =>
                                        navigationController.navigateTo(
                                            RoadmapPage.title,
                                            RoadmapPage.route),
                                    child: const Text(
                                      "Roadmap",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 35),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () =>
                                        navigationController.navigateTo(
                                            TeamPage.title, TeamPage.route),
                                    child: const Text(
                                      "Team",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  const SizedBox(height: 35),
                                  InkWell(
                                    onTap: () =>
                                        navigationController.navigateTo(
                                            ContactUsPage.title,
                                            ContactUsPage.route),
                                    child: const Text(
                                      "Contact us",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () => {
                                  () async {
                                    try {
                                      await launchUrlString(
                                          "mailto:$projectMail");
                                    } catch (e) {
                                      await Clipboard.setData(
                                          const ClipboardData(
                                              text: projectMail));
                                    }
                                  }()
                                },
                                child: const Icon(
                                  Icons.email,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                              const SizedBox(width: 15),
                              const Icon(
                                Icons.discord,
                                color: Colors.white,
                                size: 32,
                              ),
                              const SizedBox(width: 15),
                              const Icon(
                                Icons.telegram,
                                color: Colors.white,
                                size: 32,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.1,
                      )
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
          )),
    );
  }
}
