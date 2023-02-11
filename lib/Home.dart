import 'package:flutter/material.dart';
import 'package:grocery/Widgets.dart';

import 'package:grocery/colors.dart';
import 'package:grocery/curvedAppbar.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
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
              SizedBox(
                width: MediaQuery.of(context).size.width * .4,
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
                  children: [
                    Container(
                      height: y * .78,
                    ),
                    Positioned(
                        left: 0,
                        bottom: 0,
                        child: SizedBox(
                          width: x,
                          child: Stack(
                            children: [
                              CustomPaint(
                                size: Size(size.width, 80),
                                painter: BNBCustomPainter(),
                              ),
                              Center(
                                heightFactor: 0.6,
                                child: FloatingActionButton(
                                    backgroundColor: Colors.orange,
                                    elevation: 0.1,
                                    onPressed: () {},
                                    child: const Icon(Icons.shopping_basket)),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
