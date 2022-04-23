import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grock/grock.dart';
import 'package:youtube_ecommerce_app/assets.dart';
import 'package:youtube_ecommerce_app/constant/constant.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  String appbarTitle;

  CustomAppbar({Key? key, this.appbarTitle = "iDrip"})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appbarTitle,
        style:
            const TextStyle(color: Constant.black, fontWeight: FontWeight.bold),
      ),
      leading: Padding(
        padding: 12.allP,
        child: SvgPicture.asset(
          Assets.icons.icDrawerSVG,
        ),
      ),
      actions: [
        Padding(
          padding: 12.allP,
          child: SvgPicture.asset(
            Assets.icons.icSearchSVG,
          ),
        ),
      ],
      backgroundColor: Constant.darkWhite,
    );
  }
}
