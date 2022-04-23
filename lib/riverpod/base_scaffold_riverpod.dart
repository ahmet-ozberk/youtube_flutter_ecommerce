import 'package:flutter/material.dart';
import 'package:youtube_ecommerce_app/assets.dart';
import 'package:youtube_ecommerce_app/model/bottom_nav_bar_model.dart';
import 'package:youtube_ecommerce_app/view/account.dart';
import 'package:youtube_ecommerce_app/view/cart.dart';
import 'package:youtube_ecommerce_app/view/category.dart';
import 'package:youtube_ecommerce_app/view/home.dart';
import 'package:youtube_ecommerce_app/view/wishlist.dart';

class BaseScaffoldRiverpod extends ChangeNotifier {
  List<BottomNavBarModel> items = [
    BottomNavBarModel(image: Assets.icons.icBottomHomeSVG, title: "Home"),
    BottomNavBarModel(image: Assets.icons.icBottomSaveSVG, title: "Wishlist"),
    BottomNavBarModel(
        image: Assets.icons.icBottomCategoriesSVG, title: "Category"),
    BottomNavBarModel(image: Assets.icons.icBottomProfileSVG, title: "Account"),
    BottomNavBarModel(image: Assets.icons.icBottomCartSVG, title: "Cart"),
  ];
  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return Home();
      case 1:
        return Wishlist();
      case 2:
        return Category();
      case 3:
        return Account();
      case 4:
        return Cart();
      default:
        return Home();
    }
  }
}
