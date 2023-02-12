import 'package:flutter/material.dart';
import 'package:grocery/Widgets.dart';
import 'package:grocery/colors.dart';

class popDeals extends StatefulWidget {
  const popDeals({super.key});

  @override
  State<popDeals> createState() => _popDealsState();
}

class _popDealsState extends State<popDeals> {
  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Material(
      color: mildGrey,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        height: y * .22,
        width: x * .9,
        child: Column(
          children: [
            SpaceBox(10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              textBlack("Popular deals", 20),
              const SizedBox(
                width: 180,
              ),
              const Text('See all', style: TextStyle(color: Colors.green)),
            ]),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 15, 8, 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 160, 239, 163),
                        borderRadius: BorderRadius.circular(20)),
                    height: y * .1,
                    width: 160,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 15, 8, 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 160, 239, 163),
                        borderRadius: BorderRadius.circular(20)),
                    height: y * .1,
                    width: 160,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 15, 8, 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 160, 239, 163),
                        borderRadius: BorderRadius.circular(20)),
                    height: y * .1,
                    width: 160,
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
