import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:letsublet/src/screens/onboarding/finder_onboarding/profile_a11y.dart';

import '../../../../utils/size_utils.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_floating_text.dart';
import 'display_picture.dart';

class NonNegotiables extends StatefulWidget {
  const NonNegotiables({super.key});

  @override
  State<NonNegotiables> createState() => _NonNegotiablesState();
}

class _NonNegotiablesState extends State<NonNegotiables> {
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text("Do you have any non-negoatiables"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CustomFloatingEditText(
                            focusNode: FocusNode(),
                            hintText: "Ex: No smoking No drinking",
                            margin: getMargin(
                              top: 8,
                              left: 24,
                              right: 24,
                            ),
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center,
                            maxLines: 7,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child:
                                Text("Do you have any notes for the subletter"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CustomFloatingEditText(
                            focusNode: FocusNode(),
                            hintText: "Share your interests",
                            margin: getMargin(
                              top: 8,
                              left: 24,
                              right: 24,
                            ),
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center,
                            maxLines: 7,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          top: 150,
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
                                  builder: (context) => DisplayPicture(),
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
