import 'package:ecommerce_ui_animation/homeScreen.dart';
import 'package:ecommerce_ui_animation/shop_page/bestSellingProductdts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.Path,
      routes: {
        HomeScreen.Path: (context) => HomeScreen(),
        Productdts.path: (context) => Productdts(),
      },
    );
  }
}
