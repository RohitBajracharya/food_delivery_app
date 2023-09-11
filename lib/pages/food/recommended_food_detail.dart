import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/controllers/recommended_product_controller.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';

import '../../routes/route_helper.dart';
import '../../utils/app_constants.dart';
import '../../utils/colors.dart';
import '../../utils/dimension.dart';

class RecommendedFoodDetail extends StatelessWidget {
  final int pageId;
  const RecommendedFoodDetail({super.key, required this.pageId});

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecommendedProductController>().recommendedProductList[pageId];
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getInitial());
                  },
                  child: const AppIcon(icon: Icons.clear),
                ),
                const AppIcon(icon: Icons.shopping_cart_outlined),
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
                    text: product.name!,
                    size: Dimensions.font26,
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                AppConstants.BASE_URL + AppConstants.UPLOAD_URL + product.img!,
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
                  child: ExpandableTextWidget(
                    text: product.description!,
                  ),
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
                  text: "\$${product.price!}  X  0 ",
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
