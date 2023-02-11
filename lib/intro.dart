import 'package:flutter/material.dart';
import 'package:grocery/Widgets.dart';
import 'package:grocery/colors.dart';
import 'package:grocery/introCards.dart';

import 'curvedAppbar.dart';

// ignore: camel_case_types
class introScreen extends StatefulWidget {
  const introScreen({super.key});

  @override
  State<introScreen> createState() => _introScreenState();
}

class _introScreenState extends State<introScreen> {
  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Material(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80.0,
          backgroundColor: primaryAccent,
          elevation: 0.0,
          flexibleSpace: SafeArea(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
                iconSize: 15,
                color: Colors.white,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .4,
              ),
              TextWhite("Skip", 20)
            ],
          )),
        ),
        body: Stack(
          children: [
            Container(
              color: mildGrey,
            ),
            CustomPaint(
              painter: AppBarPainter(),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Sqirlce(const introCards(), x, y),
                  SizedBox(
                    width: x * .85,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // <-- Radius
                        ),
                      ),
                      child: TextWhite("Get Started", 15),
                    ),
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
