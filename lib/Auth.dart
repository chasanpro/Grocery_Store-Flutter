import 'package:flutter/material.dart';
import 'package:grocery/SignIn.dart';
import 'package:grocery/Widgets.dart';
import 'package:grocery/colors.dart';
import 'package:grocery/signUp.dart';

import 'curvedAppbar.dart';

// ignore: camel_case_types
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  String userState = "SignIn";
  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                width: MediaQuery.of(context).size.width * .4,
              ),
              TextWhite("Skip", 20)
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
                  if (userState == "SignUp")
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Sqirlce(const SignUp(), x, y * .9),
                        SpaceBox(20),
                        SizedBox(
                          width: x * .85,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10), // <-- Radius
                              ),
                            ),
                            child: TextWhite("Sign Up", 15),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                            // set the default style for the children TextSpans
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            children: [
                              TextSpan(
                                  text: 'Already Have and account?',
                                  style: TextStyle()),
                              TextSpan(
                                  text: 'Sign In',
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        )
                      ],
                    ),
                  if (userState == "SignIn")
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: y * .9 * .73,
                            width: x * .95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white,
                            ),
                            child: const signIn()),
                        SpaceBox(60),
                        SizedBox(
                          width: x * .85,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10), // <-- Radius
                              ),
                            ),
                            child: TextWhite("Sign In", 15),
                          ),
                        ),
                        SpaceBox(10),
                        RichText(
                          text: const TextSpan(
                            // set the default style for the children TextSpans
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            children: [
                              TextSpan(
                                  text: 'Already Have and account?',
                                  style: TextStyle()),
                              TextSpan(
                                  text: 'Sign In',
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
                        )
                      ],
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
