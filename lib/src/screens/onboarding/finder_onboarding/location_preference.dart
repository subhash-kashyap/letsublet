import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:letsublet/src/screens/onboarding/finder_onboarding/profile_work_rent.dart';

import '../../../../utils/size_utils.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_floating_text.dart';

class LocationF extends StatefulWidget {
  const LocationF({super.key});

  @override
  State<LocationF> createState() => _LocationFState();
}

class _LocationFState extends State<LocationF> {
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
                            "Enter preferred area\n\nor\n\nyour college name"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomFloatingEditText(
                        focusNode: FocusNode(),
                        hintText: "Ex: Boston or North East...",
                        margin: getMargin(
                          left: 24,
                          right: 24,
                        ),
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.center,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        child: Center(child: Text("Map coming")),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24,
                          top: 300,
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
                              text: "Next",
                              margin: getMargin(
                                right: 10,
                              ),
                              shape: ButtonShape.Square,
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => WorkRent(),
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
