import 'package:youtube_ecommerce_app/model/product.dart';

class HomeProductsModel {
  String categoryTitle;
  List<Product> products;
  HomeProductsModel({
    required this.categoryTitle,
    required this.products,
  });
}
