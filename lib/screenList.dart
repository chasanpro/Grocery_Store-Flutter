import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/Auth.dart';
import 'package:grocery/Home.dart';
import 'package:grocery/Services/allCategories.dart';
import 'package:grocery/intro.dart';
import 'package:grocery/order.dart';
import 'package:grocery/sign.dart';

class screenList extends StatefulWidget {
  const screenList({
    super.key,
  });

  @override
  State<screenList> createState() => _screenListState();
}

class _screenListState extends State<screenList> {
  @override
  Widget build(BuildContext context) {
    double realwidth = MediaQuery.of(context).size.width; // Gives the width
    double realheight = MediaQuery.of(context).size.height; // Gives the height
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 400,
                child: CupertinoButton(
                  color: const Color.fromARGB(255, 45, 152, 240),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const introScreen()),
                    );
                  },
                  child: const Text(
                    "Intro Screen",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 400,
                child: CupertinoButton(
                  color: const Color.fromARGB(255, 45, 152, 240),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Auth()),
                    );
                  },
                  child: const Text(
                    "Sign-IN",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 400,
                child: CupertinoButton(
                  color: const Color.fromARGB(255, 45, 152, 240),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const sign()),
                    );
                  },
                  child: const Text(
                    "SignUP",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 400,
                child: CupertinoButton(
                  color: const Color.fromARGB(255, 45, 152, 240),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const homeScreen()),
                    );
                  },
                  child: const Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 400,
                child: CupertinoButton(
                  color: const Color.fromARGB(255, 45, 152, 240),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const allCatgrs()),
                    );
                  },
                  child: const Text(
                    "All Categories",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: 400,
                child: CupertinoButton(
                  color: const Color.fromARGB(255, 45, 152, 240),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const order()),
                    );
                  },
                  child: const Text(
                    "Orders",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
