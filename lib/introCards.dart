import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:grocery/colors.dart';

import 'Widgets.dart';

class introCards extends StatefulWidget {
  const introCards({super.key});

  @override
  State<introCards> createState() => _introCardsState();
}

class _introCardsState extends State<introCards> {
  late PageController _controller;
  late double dotPosition;
  List<Widget> items = [
    infoCard("assets/cook.png", " Shop Your Daily Needs",
        "You won't find it cheaper anywhere else", "than Grownik"),
    infoCard("assets/cook.png", " Exciting Offers",
        "Get new offers and great deals everyday", "every hour"),
    infoCard("assets/cook.png", " 1000+ Products",
        "Shop and get delivery at your", "convenience"),
  ];

  @override
  void initState() {
    _controller = PageController();
    dotPosition = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 600,
        width: 500,
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    dotPosition = value + 0.0;
                  });
                },
                controller: _controller,
                children: items,
              ),
            ),
            DotsIndicator(
              position: dotPosition,
              dotsCount: items.length,
              decorator: DotsDecorator(
                color: mildGrey, // Inactive color
                activeColor: primaryAccent,
              ),
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}

buildPage(
  String text,
  Color color,
) {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 42, color: Colors.white),
        ),
      ),
    ),
  );
}

infoCard(String path, String quote, subt1, subt2) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          height: 60,
        ),
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200), color: primaryAccent),
          child: CircleAvatar(radius: 160, foregroundImage: AssetImage(path)),
        ),
        const SizedBox(
          height: 10,
        ),
        boldBlack(quote, 22),
        const SizedBox(
          height: 10,
        ),
        textBlack("$subt1", 16),
        textBlack("$subt2", 16),
        const SizedBox(
          height: 40,
        )
      ],
    ), //CircleAvatar
  );
}
