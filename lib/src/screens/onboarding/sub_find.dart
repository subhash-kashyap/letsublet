import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../utils/size_utils.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_floating_text.dart';
import 'finder_onboarding/findersplash.dart';

class SubFind extends StatefulWidget {
  const SubFind({super.key});

  @override
  State<SubFind> createState() => _SubFindState();
}

class _SubFindState extends State<SubFind> {
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(62.0),
                        child: Text(
                            "Hi Miguel, Welcome to LetSublet.\n\nWould you like to look at Places where you can stay Or Would you like to sublet a place?"),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                            height: getVerticalSize(
                              37,
                            ),
                            width: getHorizontalSize(
                              195,
                            ),
                            variant: ButtonVariant.OutlineBlack900_1,
                            text: "Look at Places",
                            fontStyle: ButtonFontStyle.BungeeInlineRegular20,
                            shape: ButtonShape.Square,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => FinderSplash(),
                                ),
                              );
                              log("Finder");
                            },
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              37,
                            ),
                            width: getHorizontalSize(
                              195,
                            ),
                            variant: ButtonVariant.OutlineBlack900_1,
                            text: "Sublet a place",
                            fontStyle: ButtonFontStyle.BungeeInlineRegular20,
                            shape: ButtonShape.Square,
                            onTap: () {
                              log("Subletter");
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          top: 108,
                          right: 48,
                        ),
                        child: Row(
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
