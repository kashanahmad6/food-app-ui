import 'package:audio_player/components/my_drawer.dart';
import 'package:audio_player/components/my_food_tile.dart';
import 'package:audio_player/components/my_sliver_appbar.dart';
import 'package:audio_player/components/my_tab_bar.dart';
import 'package:audio_player/models/food.dart';
import 'package:audio_player/models/resturant.dart';
import 'package:audio_player/pages/food_page.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: FoodCatergory.values.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

// sort out and return a list of food that belongs to that category
  List<Food> _filterMenuByCategory(
      FoodCatergory category, List<Food> fullmenu) {
    return fullmenu.where((food) => food.category == category).toList();
  }

  // return list of foods in giver category

  List<Widget> getFoodInThisCategory(List<Food> fullmenu) {
    return FoodCatergory.values.map((category) {
      List<Food> categorymenu = _filterMenuByCategory(category, fullmenu);
      return ListView.builder(
        itemCount: categorymenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final food = categorymenu[index];
          return MyFoodTile(
            food: food,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FoodPage(food: food);
                }),
              );
            },
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppbar(
                  title: MyTabBar(tabController: tabController),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(
                            width: double.infinity,
                            fit: BoxFit.cover,
                            'assets/images/burgers/bg2.jpg'),
                      ),
                    ],
                  ),
                ),
              ],
          body: Consumer<Resturant>(
            builder: (context, resturant, child) => TabBarView(
              controller: tabController,
              children: getFoodInThisCategory(resturant.menu),
            ),
          )),
    );
  }
}
