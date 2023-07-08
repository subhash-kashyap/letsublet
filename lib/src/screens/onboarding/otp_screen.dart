import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
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
                      Container(
                        margin: const EdgeInsets.only(
                          left: 23,
                          right: 24,
                        ),
                        alignment: Alignment.center,
                        child: TextFormField(
                          focusNode: FocusNode(),
                          autofocus: false,
                          // controller: controller.otptextController,
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2.0))),
                            labelText: "Enter OTP",
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24,
                          top: 427,
                          right: 48,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              style: ButtonStyle(),
                              onPressed: () {
                                Navigator.of(context).pop();

                                log("Pressed Back");
                              },
                              child: Text("<"),
                            ),
                            TextButton(
                              onPressed: () {
                                log("Pressed Next");
                              },
                              child: Text("Next"),
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
