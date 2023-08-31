// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:food_delivery_app/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimension.dart';
import 'big_text.dart';
import 'icon_and_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //item name
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        //stars, rating, comments
        Row(
          children: [
            //stars
            Wrap(
              children: List.generate(
                5,
                (index) => const Icon(Icons.star,
                    color: AppColors.mainColor, size: 15),
              ),
            ),
            SizedBox(width: Dimensions.width10),
            //ratings
            SmallText(text: "4.5"),
            SizedBox(width: Dimensions.width10),
            //comments
            SmallText(text: "1287 comments"),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        //icon and text
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7 km",
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32 min",
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
