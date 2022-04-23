import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Cart extends ConsumerStatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishlistState();
}

class _WishlistState extends ConsumerState<Cart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("cart"),),
    );
  }
}