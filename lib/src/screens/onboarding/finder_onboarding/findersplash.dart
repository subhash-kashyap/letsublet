import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:letsublet/src/screens/onboarding/finder_onboarding/location_preference.dart';
import 'package:letsublet/src/screens/onboarding/sub_find.dart';

import '../../../../utils/size_utils.dart';
import '../../../../widgets/custom_button.dart';

class FinderSplash extends StatefulWidget {
  const FinderSplash({super.key});

  @override
  State<FinderSplash> createState() => _FinderSplashState();
}

class _FinderSplashState extends State<FinderSplash> {
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
                  top: 296,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 62, right: 62),
                        child: Text(
                            "Let’s find you the best house. We will require a few of your preferences to show you the right results."),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 188,
                          right: 48,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomButton(
                                height: getVerticalSize(
                                  37,
                                ),
                                width: getHorizontalSize(
                                  164,
                                ),
                                text: "Let's Get Started",
                                margin: getMargin(
                                  right: 10,
                                ),
                                shape: ButtonShape.Square,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => LocationF(),
                                    ),
                                  );
                                  log("Clicked Next");
                                }),
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
