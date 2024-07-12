// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:audio_player/models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const MyFoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food.name,
                        ),
                        Text(
                          (' ${food.price} Rs'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          food.description,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        food.imagePath,
                        height: 110,
                        width: 100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.secondary,
            indent: 25,
            endIndent: 25,
          )
        ],
      ),
    );
  }
}
