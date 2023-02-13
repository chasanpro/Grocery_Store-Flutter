import 'package:flutter/material.dart';
import 'package:grocery/Widgets.dart';
import 'package:grocery/categories.dart';

import 'package:grocery/colors.dart';
import 'package:grocery/curvedAppbar.dart';
import 'package:grocery/offers.dart';
import 'package:grocery/popdeals.dart';

import 'package:grocery/reuseTf.dart';

class homeScreen extends StatefulWidget {

  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int currentIndex = 0;
  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150.0,
        backgroundColor: primaryAccent,
        elevation: 0.0,
        flexibleSpace: SafeArea(
            top: true,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWhite("Hey ☺️", 18),
                        TextWhite("Lets search your grocery food.", 18),
                      ],
                    ),
                    photo()
                  ],
                ),
                ReusableTextField(
                    label: "Name",
                    onChanged: (value) {},
                    hintText: "🔍 Search your daily grocery food",
                    obscureText: false,
                    textInputType: TextInputType.name),
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
                  SizedBox(
                    height: y * .7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [categories(), offers(), popDeals()],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(children: [
              CustomPaint(
                size: Size(size.width, 110),
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
              SizedBox(
                width: size.width,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.home,
                        color: currentIndex == 0
                            ? Colors.orange
                            : Colors.grey.shade400,
                      ),
                      onPressed: () {
                        setBottomBarIndex(0);
                      },
                      splashColor: Colors.white,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.restaurant_menu,
                          color: currentIndex == 1
                              ? Colors.orange
                              : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          setBottomBarIndex(1);
                        }),
                    Container(
                      width: size.width * 0.20,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.bookmark,
                          color: currentIndex == 2
                              ? Colors.orange
                              : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          setBottomBarIndex(2);
                        }),
                    IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: currentIndex == 3
                              ? Colors.orange
                              : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          setBottomBarIndex(3);
                        }),
                  ],
                ),
              )
            ]
            ),
          )
        ],
      ),
    );
  }
}

