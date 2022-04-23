import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Wishlist extends ConsumerStatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishlistState();
}

class _WishlistState extends ConsumerState<Wishlist> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("wishlist"),),
    );
  }
}