import 'package:flutter/material.dart';
import 'package:youtube_ecommerce_app/assets.dart';
import 'package:youtube_ecommerce_app/model/home_products_model.dart';
import 'package:youtube_ecommerce_app/model/product.dart';

class HomeRiverpod extends ChangeNotifier {
  List<String> campaigns = [
    Assets.images.imCampaignsPNG,
    Assets.images.imCampaignsPNG,
    Assets.images.imCampaignsPNG,
  ];

  int campaignsCurrentIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  void setCampaignsIndex(int newPageValue) {
    campaignsCurrentIndex = newPageValue;
    notifyListeners();
  }

  HomeProductsModel hotDeals =
      HomeProductsModel(categoryTitle: "Hot Deals", products: [
    Product(
        image: Assets.images.imC1PNG,
        title: "apple iMac 24 (2021)",
        price: 1299,
        star: 4.9,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: false),
    Product(
        image: Assets.images.imW1PNG,
        title: "Apple Watch V1",
        price: 859,
        star: 4.7,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: true),
    Product(
        image: Assets.images.imP1PNG,
        title: "Apple iPhone 12 Series",
        price: 1199,
        star: 5.0,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: false),
  ]);

  HomeProductsModel mostPopular =
      HomeProductsModel(categoryTitle: "Most Popular", products: [
    Product(
        image: Assets.images.imC2PNG,
        title: "apple iMac 30 (2018)",
        price: 1000,
        star: 4.4,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: true),
    Product(
        image: Assets.images.imW2PNG,
        title: "Apple Watch V2",
        price: 1099,
        star: 4.9,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: false),
    Product(
        image: Assets.images.imP2PNG,
        title: "Apple iPhone 13 Pro Max",
        price: 1499,
        star: 5.0,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: true),
  ]);
}
