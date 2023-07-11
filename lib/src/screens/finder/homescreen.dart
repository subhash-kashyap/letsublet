import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FinderHome extends StatefulWidget {
  const FinderHome({super.key});

  @override
  State<FinderHome> createState() => _FinderHomeState();
}

class _FinderHomeState extends State<FinderHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage(
        //         'assets/images/noise_bg.png'), // Replace with your image path
        //     fit: BoxFit.fill,
        //   ),
        // ),
        child: Padding(
          padding: const EdgeInsets.only(top: 42.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        log("Clicked menu");
                      },
                      child: Container(
                          decoration: BoxDecoration(color: Colors.white),
                          child: Icon(Icons.clear_all)),
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: Text("Boston, Ma"),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: Icon(Icons.star_border)),
                  ],
                ),
              ), // Header - Appbar replacement
              Padding(
                padding: const EdgeInsets.only(top: 42.0),
                child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Text("Bunch of Widgets")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
