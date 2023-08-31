import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text_widget.dart';

import '../../utils/colors.dart';
import '../../utils/dimension.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      Dimensions.radius20,
                    ),
                    topRight: Radius.circular(
                      Dimensions.radius20,
                    ),
                  ),
                  color: Colors.white,
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child: Center(
                  child: BigText(
                    text: "Pancake with Honey",
                    size: Dimensions.font26,
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/pancake.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: const ExpandableTextWidget(
                      text:
                          "Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion.Savor the sweet moments of morning with our pancake, honey, and berries combination. Fluffy pancakes meet the golden drizzle of honey and the burst of juicy berries, creating a symphony of flavors that's as delightful as it is energizing. Experience comfort and freshness on a plate, and make your breakfast a truly special occasion."),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // + - icons and amount text
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width20 * 2.5,
              vertical: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // '-' icons
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
                // text
                BigText(
                  text: "\$12.88  X  0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                // '+' icons
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
          // add to cart and favourite button
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //favourite icon
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: Dimensions.height20,
                    horizontal: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                // add to cart button
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
