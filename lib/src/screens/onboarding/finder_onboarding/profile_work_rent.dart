import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:letsublet/src/screens/onboarding/finder_onboarding/profile_a11y.dart';

import '../../../../utils/size_utils.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_floating_text.dart';

class WorkRent extends StatefulWidget {
  const WorkRent({super.key});

  @override
  State<WorkRent> createState() => _WorkRentState();
}

class _WorkRentState extends State<WorkRent> {
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
                      Padding(
                        padding: const EdgeInsets.only(left: 14, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("What's your work status?"),
                            Text("drop")
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 14.0),
                            child: Text("Where are you Studying?"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CustomFloatingEditText(
                            focusNode: FocusNode(),
                            hintText: "North Eastern University",
                            margin: getMargin(
                              left: 23,
                              right: 24,
                            ),
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center,
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
                                Text("What’s your Max Monthly rental budget?"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CustomFloatingEditText(
                            focusNode: FocusNode(),
                            hintText: "North Eastern University",
                            margin: getMargin(
                              left: 23,
                              right: 24,
                            ),
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center,
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
                            child: Text("From when do you want the house?"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CustomFloatingEditText(
                            focusNode: FocusNode(),
                            hintText: "North Eastern University",
                            margin: getMargin(
                              left: 23,
                              right: 24,
                            ),
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          top: 50,
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
                                  builder: (context) => A11y(),
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
