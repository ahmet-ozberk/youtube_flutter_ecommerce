import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:youtube_ecommerce_app/assets.dart';
import 'package:youtube_ecommerce_app/constant/constant.dart';
import 'package:youtube_ecommerce_app/view/base_scaffold.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Grock.toRemove(BaseScaffold());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.darkWhite,
      body: Center(
        child: Image.asset(Assets.images.imSplashPNG),
      ),
    );
  }
}
