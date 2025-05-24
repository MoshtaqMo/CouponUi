import 'package:couponui/home_page.dart';
import 'package:couponui/intro.dart';
import 'package:couponui/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
      routes: {
        "homepage":(context)=>HomePage(),
        "page":(context)=>Pages(),

      },
    );
  }
}