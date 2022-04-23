import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_ecommerce_app/components/custom_appbar.dart';
import 'package:youtube_ecommerce_app/components/custom_bottom_nav_bar.dart';
import 'package:youtube_ecommerce_app/riverpod/base_scaffold_riverpod.dart';

final baseScaffoldRiverpod =
    ChangeNotifierProvider((ref) => BaseScaffoldRiverpod());

class BaseScaffold extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends ConsumerState<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      bottomNavigationBar: CustomBottomNavBar(),
      body: ref.watch(baseScaffoldRiverpod).body(),
    );
  }
}
