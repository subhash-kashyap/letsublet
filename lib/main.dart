import 'package:flutter/material.dart';
import 'package:letsublet/src/screens/onboarding/mobilenumber_screen.dart';
import 'package:letsublet/src/screens/subletter/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Initial());
  }
}
