// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audio_player/models/resturant.dart';
import 'package:flutter/material.dart';

import 'package:audio_player/models/food.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({
    super.key,
    required this.food,
  }) {
    for (Addon addon in food.addon) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    Navigator.pop(context);
    List<Addon> currentlySelectedAddons = [];

    for (Addon addon in widget.food.addon) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Resturant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    widget.food.imagePath,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.food.name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          (' ${widget.food.price}Rs'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.food.description,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Add ons',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          child: ListView.builder(
                              itemCount: widget.food.addon.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                Addon addon = widget.food.addon[index];

                                return CheckboxListTile(
                                    title: Text(addon.name),
                                    subtitle: Text(
                                      ' ${addon.price} Rs',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    value: widget.selectedAddons[addon],
                                    onChanged: (bool? value) {
                                      setState(() {
                                        widget.selectedAddons[addon] = value!;
                                      });
                                    });
                              }),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () =>
                              addToCart(widget.food, widget.selectedAddons),
                          child: Container(
                            margin: const EdgeInsets.all(15),
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text(
                                'Add to Cart',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(Icons.arrow_back),
              ),
            ),
          ),
        )
      ],
    );
  }
}
