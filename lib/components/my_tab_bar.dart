// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audio_player/models/food.dart';

import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs() {
    return FoodCatergory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      isScrollable: true,
      tabAlignment: TabAlignment.center,
      dividerColor: Colors.transparent,
      controller: tabController,
      tabs: _buildCategoryTabs(),
    );
  }
}
