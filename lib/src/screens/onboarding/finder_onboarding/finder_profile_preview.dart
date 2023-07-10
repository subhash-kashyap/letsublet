import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:letsublet/src/screens/onboarding/finder_onboarding/profile_work_rent.dart';

import '../../../../utils/size_utils.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_floating_text.dart';
import '../../finder/homescreen.dart';

class ProfilePreview extends StatefulWidget {
  const ProfilePreview({super.key});

  @override
  State<ProfilePreview> createState() => _ProfilePreviewState();
}

class _ProfilePreviewState extends State<ProfilePreview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(
                  top: 60,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                            textAlign: TextAlign.center,
                            "Here is the Subletter’s view of your profile\n\nMake changes if necessary"),
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 32.0, bottom: 20),
                            child: Text("mini View"),
                          ), //highlighted text
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 89.0, right: 89),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)),
                              child: Column(
                                // Needs to be widgetized
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [Text("Kiran")],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [Text("25 M "), Text("Student")],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text("Can move in @ "),
                                      Text("24 Jul")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const [
                                      Text("Studies "), // dymnamic
                                      Text("at "),
                                      Text("NEU") // Dynamic
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text("Open Minded"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 32.0),
                              child: Text("Full View"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 40.0),
                              child: Text("Full VIew Widget"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          top: 100,
                          right: 48,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                                height: getVerticalSize(
                                  37,
                                ),
                                width: getHorizontalSize(
                                  10,
                                ),
                                variant: ButtonVariant.OutlineBlack900_1,
                                text: "<",
                                shape: ButtonShape.Square,
                                onTap: () {
                                  Navigator.of(context).pop();
                                  log("pressed Back");
                                }),
                            CustomButton(
                              height: getVerticalSize(
                                37,
                              ),
                              width: getHorizontalSize(
                                87,
                              ),
                              text: "Finish",
                              margin: getMargin(
                                right: 10,
                              ),
                              shape: ButtonShape.Square,
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => FinderHome(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
