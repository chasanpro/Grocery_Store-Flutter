import 'package:flutter/material.dart';
import 'package:grocery/Widgets.dart';
import 'package:grocery/stepper.dart';

import 'colors.dart';
import 'curvedAppbar.dart';

class orderDetails extends StatelessWidget {
  const orderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
              TextWhite("Order Details", 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * .1,
              ),
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
                  Container(
                    height: y * .5,
                    width: x * .95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: StepperDemo(),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
