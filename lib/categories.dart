import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:grocery/Widgets.dart';
import 'package:grocery/colors.dart';

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  List category = [];
  List image = [];
  Set temp = {};

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
    }
  }

  @override
  Widget build(BuildContext context) {
    apiCallV2();
    category.toSet().toList();

    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Material(
      color: mildGrey,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        height: y * .20,
        width: x * .9,
        child: Column(
          children: [
            SpaceBox(10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              textBlack("Categories", 20),
              const SizedBox(
                width: 180,
              ),
              const Text('See all', style: TextStyle(color: Colors.green)),
            ]),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (BuildContext context, int index) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 227, 252, 228),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
