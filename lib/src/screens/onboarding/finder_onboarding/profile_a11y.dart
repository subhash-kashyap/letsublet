import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:letsublet/src/screens/onboarding/finder_onboarding/non_negotiables.dart';

import '../../../../utils/size_utils.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_floating_text.dart';

class A11y extends StatefulWidget {
  const A11y({super.key});

  @override
  State<A11y> createState() => _A11yState();
}

class _A11yState extends State<A11y> {
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
                    children: [
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 14, right: 20),
                            child: Text("Any accessibility Requirements"),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              72,
                            ),
                            text: "Add",
                            margin: getMargin(
                              top: 10,
                            ),
                            variant: ButtonVariant.OutlineGray60001,
                            fontStyle: ButtonFontStyle.CourierPrimeRegular14,
                            prefixWidget: Container(
                                margin: getMargin(
                                  right: 8,
                                ),
                                child: Icon(Icons.car_crash)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 20),
                            child: Text("Public Transport Requirement"),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              172,
                            ),
                            text: "< 10 min walk away",
                            margin: getMargin(
                              top: 10,
                            ),
                            variant: ButtonVariant.OutlineGray60001,
                            fontStyle: ButtonFontStyle.CourierPrimeRegular14,
                            prefixWidget: Container(
                                margin: getMargin(
                                  right: 8,
                                ),
                                child: Icon(Icons.nordic_walking_sharp)),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              172,
                            ),
                            text: "< 20 min walk away",
                            margin: getMargin(
                              top: 10,
                            ),
                            variant: ButtonVariant.OutlineGray60001,
                            fontStyle: ButtonFontStyle.CourierPrimeRegular14,
                            prefixWidget: Container(
                                margin: getMargin(
                                  right: 8,
                                ),
                                child: Icon(Icons.nordic_walking)),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              32,
                            ),
                            width: getHorizontalSize(
                              172,
                            ),
                            text: "I dont really need it",
                            margin: getMargin(
                              top: 10,
                            ),
                            variant: ButtonVariant.OutlineGray60001,
                            fontStyle: ButtonFontStyle.CourierPrimeRegular14,
                            prefixWidget: Container(
                                margin: getMargin(
                                  right: 8,
                                ),
                                child: Icon(Icons.donut_large)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          top: 160,
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
                            CustomButton(
                                height: getVerticalSize(
                                  37,
                                ),
                                width: getHorizontalSize(
                                  87,
                                ),
                                text: "Next",
                                margin: getMargin(
                                  right: 10,
                                ),
                                shape: ButtonShape.Square,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const NonNegotiables(),
                                    ),
                                  );
                                  log("pressed next");
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
