import 'package:flutter/material.dart';

import 'package:grocery/Widgets.dart';
import 'package:grocery/colors.dart';
import 'package:grocery/curvedAppbar.dart';

// ignore: camel_case_types
class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  int currentIndex = 0;
  List category = [];
  List image = [];
  Set temp = {};

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
                  TextWhite("Orders", 20),
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
                        children: [
                          SpaceBox(40),
                          SizedBox(
                            height: 40,
                            child: Expanded(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(12, 0, 4, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 106, 198, 109),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 40,
                                      width: 120,
                                      child: Center(
                                        child: TextWhite("All Orders", 15),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: mildGrey, width: 5),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 40,
                                      width: 100,
                                      child: Center(
                                        child: textBlack("Pending", 15),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: mildGrey, width: 5),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 40,
                                      width: 100,
                                      child: Center(
                                        child: textBlack("Processing", 15),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 0, 12, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: mildGrey, width: 5),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 40,
                                      width: 120,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 0, 40, 0),
                                child: Container(
                                  height: y / 5,
                                  width: x * .6,
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(70),
                                          child: Image.network(
                                            "https://www.jiomart.com/images/product/600x600/590000070/pineapple-queen-1-pc-approx-700-g-1200-g-product-images-o590000070-p590000070-0-202203170357.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          textBlack("PineApple (1KG)", 15),
                                          const Text(
                                            "& 10.00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 32, 201, 23)),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: mildGrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                height: 30,
                                                width: 120,
                                                child: Center(
                                                  child: textBlack(
                                                      "Processing", 15),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 40,
                                              ),
                                              const Text(
                                                "23 JAN 2020",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(
                                                      255, 173, 166, 166),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 0, 40, 0),
                                child: Container(
                                  height: y / 5,
                                  width: x * .6,
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(70),
                                          child: Image.network(
                                            "https://www.jiomart.com/images/product/600x600/590000070/pineapple-queen-1-pc-approx-700-g-1200-g-product-images-o590000070-p590000070-0-202203170357.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          textBlack("PineApple (1KG)", 15),
                                          const Text(
                                            "& 10.00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 32, 201, 23)),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: mildGrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                height: 30,
                                                width: 120,
                                                child: Center(
                                                  child: textBlack(
                                                      "Processing", 15),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 40,
                                              ),
                                              const Text(
                                                "23 JAN 2020",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(
                                                      255, 173, 166, 166),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 0, 40, 0),
                                child: Container(
                                  height: y / 5,
                                  width: x * .6,
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(70),
                                          child: Image.network(
                                            "https://www.jiomart.com/images/product/600x600/590000070/pineapple-queen-1-pc-approx-700-g-1200-g-product-images-o590000070-p590000070-0-202203170357.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          textBlack("PineApple (1KG)", 15),
                                          const Text(
                                            "& 10.00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 32, 201, 23)),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: mildGrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                height: 30,
                                                width: 120,
                                                child: Center(
                                                  child: textBlack(
                                                      "Processing", 15),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 40,
                                              ),
                                              const Text(
                                                "23 JAN 2020",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(
                                                      255, 173, 166, 166),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 0, 40, 0),
                                child: Container(
                                  height: y / 5,
                                  width: x * .6,
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(70),
                                          child: Image.network(
                                            "https://www.jiomart.com/images/product/600x600/590000070/pineapple-queen-1-pc-approx-700-g-1200-g-product-images-o590000070-p590000070-0-202203170357.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          textBlack("PineApple (1KG)", 15),
                                          const Text(
                                            "& 10.00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 32, 201, 23)),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: mildGrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                height: 30,
                                                width: 120,
                                                child: Center(
                                                  child: textBlack(
                                                      "Processing", 15),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 40,
                                              ),
                                              const Text(
                                                "23 JAN 2020",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(
                                                      255, 173, 166, 166),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 0, 40, 0),
                                child: Container(
                                  height: y / 5,
                                  width: x * .6,
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(70),
                                          child: Image.network(
                                            "https://www.jiomart.com/images/product/600x600/590000070/pineapple-queen-1-pc-approx-700-g-1200-g-product-images-o590000070-p590000070-0-202203170357.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          textBlack("PineApple (1KG)", 15),
                                          const Text(
                                            "& 10.00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 32, 201, 23)),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: mildGrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                height: 30,
                                                width: 120,
                                                child: Center(
                                                  child: textBlack(
                                                      "Processing", 15),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 40,
                                              ),
                                              const Text(
                                                "23 JAN 2020",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(
                                                      255, 173, 166, 166),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 0, 40, 0),
                                child: Container(
                                  height: y / 5,
                                  width: x * .6,
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 100,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(70),
                                          child: Image.network(
                                            "https://www.jiomart.com/images/product/600x600/590000070/pineapple-queen-1-pc-approx-700-g-1200-g-product-images-o590000070-p590000070-0-202203170357.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          textBlack("PineApple (1KG)", 15),
                                          const Text(
                                            "& 10.00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromARGB(
                                                    255, 32, 201, 23)),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: mildGrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                height: 30,
                                                width: 120,
                                                child: Center(
                                                  child: textBlack(
                                                      "Processing", 15),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 40,
                                              ),
                                              const Text(
                                                "23 JAN 2020",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(
                                                      255, 173, 166, 166),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ))
                        ],
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
