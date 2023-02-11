import 'package:flutter/material.dart';

import 'package:grocery/Auth.dart';
import 'package:grocery/Home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        theme: ThemeData( 
primarySwatch: Colors.green
      ),
        debugShowCheckedModeBanner: false,
        home: const homeScreen()
    );
  }
}

