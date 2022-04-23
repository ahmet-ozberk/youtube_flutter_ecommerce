import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Category extends ConsumerStatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishlistState();
}

class _WishlistState extends ConsumerState<Category> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("category"),),
    );
  }
}