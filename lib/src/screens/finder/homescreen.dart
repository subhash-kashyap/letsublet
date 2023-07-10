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
      appBar: AppBar(
        title: Title(
          color: Colors.black,
          child: Text("Boston, MA"),
        ),
        actions: [
          Icon(Icons.star_border_outlined),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/noise_bg.png'), // Replace with your image path
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Text("Bunch of Widgets")),
          ],
        ),
      ),
    );
  }
}
