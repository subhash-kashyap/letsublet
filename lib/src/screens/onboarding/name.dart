import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:letsublet/src/screens/onboarding/sub_find.dart';

import '../../../utils/size_utils.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_floating_text.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
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
                      CustomFloatingEditText(
                        focusNode: FocusNode(),
                        labelText: "Enter Your Name",
                        margin: getMargin(
                          left: 24,
                          right: 24,
                        ),
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.center,
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomFloatingEditText(
                            margin: getMargin(
                              left: 24,
                            ),
                            width: 120,
                            focusNode: FocusNode(),
                            labelText: "Enter Age",
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center,
                          ),
                          CustomFloatingEditText(
                            margin: getMargin(
                              right: 24,
                            ),
                            width: 120,
                            focusNode: FocusNode(),
                            labelText: "Your Gender",
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24,
                          top: 312,
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
                            SizedBox(
                              width: 100,
                            ),
                            CustomButton(
                              height: getVerticalSize(
                                37,
                              ),
                              width: getHorizontalSize(
                                87,
                              ),
                              text: "Next",
                              shape: ButtonShape.Square,
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SubFind(),
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
