import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:grocery/Widgets.dart';
import 'package:grocery/colors.dart';
import 'package:grocery/curvedAppbar.dart';

import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

// ignore: camel_case_types
class allCatgrs extends StatefulWidget {
  const allCatgrs({super.key});

  @override
  State<allCatgrs> createState() => _allCatgrsState();
}

class _allCatgrsState extends State<allCatgrs> {
  @override
  void initState() {
    apiCallV2();
    super.initState();
  }

  int currentIndex = 0;
  List category = [];
  List image = [];
  Set temp = {};

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  Future apiCallV2() async {
    var client = http.Client();
    var uri = Uri.parse("https://fakestoreapi.com/products");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      category.clear();
      var mapResponse = jsonDecode(response.body);
      mapResponse.forEach((element) {
        category.add(element["category"]);
        image.add(element["image"]);
      });
      category.removeWhere((element) => element == {null});
      category.toSet().toList();
      setState(() {
        category;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    apiCallV2();
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
              top: true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios),
                    iconSize: 15,
                    color: Colors.white,
                  ),
                  TextWhite("Categories", 20),
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
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  height: y * .8,
                  width: x * .9,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 3,
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 227, 252, 228),
                                  borderRadius: BorderRadius.circular(20)),
                              height: 100,
                              width: 105,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(70),
                                child: Image.network(
                                  image[index],
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          textBlack("${category[index]}", 12)
                        ],
                      );
                    },
                    staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                  ),
                ),
              ),
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
                Stack(children: [
                  // Container(
                  //   width: 90,
                  //   height: 90,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(40),
                  //       color: primaryAccent),
                  // ),
                  Center(
                    heightFactor: 0.6,
                    child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryAccent, width: 8),
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          "assets/shopping-cart.png",
                        )),
                  ),
                ]),
                SizedBox(
                  width: size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.home,
                              color: currentIndex == 0
                                  ? const Color.fromARGB(255, 255, 255, 255)
                                  : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(0);
                            },
                            splashColor: Colors.white,
                          ),
                          TextWhite("Home", 10)
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.restaurant_menu,
                                color: currentIndex == 1
                                    ? const Color.fromARGB(255, 255, 255, 255)
                                    : Colors.grey.shade400,
                              ),
                              onPressed: () {
                                setBottomBarIndex(1);
                              }),
                          TextWhite("Order", 10)
                        ],
                      ),
                      Container(
                        width: size.width * 0.20,
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.bookmark,
                                color: currentIndex == 2
                                    ? const Color.fromARGB(255, 255, 255, 255)
                                    : Colors.grey.shade400,
                              ),
                              onPressed: () {
                                setBottomBarIndex(2);
                              }),
                          TextWhite("Offers", 10)
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.notifications,
                                color: currentIndex == 3
                                    ? const Color.fromARGB(255, 255, 255, 255)
                                    : Colors.grey.shade400,
                              ),
                              onPressed: () {
                                setBottomBarIndex(3);
                              }),
                          TextWhite("More", 10)
                        ],
                      ),
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
