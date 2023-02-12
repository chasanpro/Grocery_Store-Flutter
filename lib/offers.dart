import 'package:flutter/material.dart';
import 'package:grocery/colors.dart';

class offers extends StatefulWidget {
  const offers({super.key});

  @override
  State<offers> createState() => _offersState();
}

class _offersState extends State<offers> {
  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Material(
      color: mildGrey,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: mildGrey),
        height: y * .18,
        width: x * .9,
        child: Expanded(
            child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 160, 239, 163),
                    borderRadius: BorderRadius.circular(20)),
                height: y * .17,
                width: 235,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 160, 239, 163),
                    borderRadius: BorderRadius.circular(20)),
                height: y * .17,
                width: 235,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
