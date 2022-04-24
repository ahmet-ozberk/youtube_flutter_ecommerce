import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:youtube_ecommerce_app/constant/constant.dart';

class CheckoutView extends ConsumerWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          "checkout",
          style: TextStyle(color: Constant.black, fontSize: 18),
        ),
        leading: IconButton(
          onPressed: () => Grock.back(),
          icon: Icon(
            Icons.arrow_back,
            size: 32,
          ),
          color: Constant.black,
        ),
      ),
    );
  }
}
