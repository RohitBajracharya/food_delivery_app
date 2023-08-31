import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/food/recommended_food_detail.dart';
import 'package:get/get.dart';
import 'package:food_delivery_app/helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RecommendedFoodDetail(),
    );
  }
}
