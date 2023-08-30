import 'package:flutter/material.dart';
import 'package:food_delivery_app/home/main_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
  //2:05:00
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainFoodPage(),
    );
  }
}
