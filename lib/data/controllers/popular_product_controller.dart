// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_delivery_app/models/products_model.dart';
import 'package:get/get.dart';

import 'package:food_delivery_app/data/repository/popular_product_repo.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body));
      update(); //works as setState
    } else {}
  }
}