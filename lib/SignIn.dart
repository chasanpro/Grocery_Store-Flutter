import 'package:flutter/material.dart';
import 'package:grocery/Widgets.dart';
import 'package:grocery/reuseTf.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            boldBlack("Sign in", 30),
            SpaceBox(10),
            textBlack("Sign in with email and password", 15),
            SpaceBox(5),
            textBlack(" to continue", 15),
          ],
        ),
        ReusableTextField(
            label: "Email Address",
            onChanged: (value) {},
            hintText: "Enter email Address",
            obscureText: false,
            textInputType: TextInputType.name),
        ReusableTextField(
            label: "Password",
            onChanged: (value) {},
            hintText: "Enter Password",
            obscureText: true,
            textInputType: TextInputType.name),
        Center(
          child: Row(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .05,
                  ),
                  Checkbox(
                    onChanged: (value) {},
                    value: false,
                  ),
                  const Text(
                    "Remember me",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .2,
                  ),
                  const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color.fromARGB(255, 219, 81, 72)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .05,
                  ),
                ],
              ),
            ],
          ),
        ),
        SpaceBox(160)
      ],
    );
  }
}
