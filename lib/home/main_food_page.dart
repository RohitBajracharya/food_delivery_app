import 'package:flutter/material.dart';
import 'package:food_delivery_app/home/food_page_body.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimension.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //country name+city name+down-arrow icon and search icon
          Container(
            child: Container(
              margin: EdgeInsets.only(
                top: Dimensions.height45,
                bottom: Dimensions.height15,
              ),
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              //country name+city name+down-arrow icon and search icon
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //country and city name and down-arrow icon
                  Column(
                    children: [
                      //country name
                      BigText(
                        text: "Nepal",
                        color: AppColors.mainColor,
                      ),
                      //city name and down-arrow icon
                      Row(
                        children: [
                          //city name
                          SmallText(
                            text: "Kathmandu",
                            color: Colors.black54,
                          ),
                          const Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),
                    ],
                  ),
                  //search icon
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor,
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //food page body
          const FoodPageBody(),
        ],
      ),
    );
  }
}
