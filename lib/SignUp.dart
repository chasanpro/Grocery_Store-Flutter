import 'package:flutter/material.dart';
import 'package:grocery/Widgets.dart';
import 'package:grocery/reuseTf.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            boldBlack("Sign up", 30),
            SpaceBox(10),
            textBlack("Sign up with email and password", 15),
            SpaceBox(5),
            textBlack(" to continue", 15),
          ],
        ),
        ReusableTextField(
            label: "Name",
            onChanged: (value) {},
            hintText: "Enter Full Name",
            obscureText: false,
            textInputType: TextInputType.name),
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
        SpaceBox(50)
      ],
    );
  }
}
