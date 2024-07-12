import 'package:audio_player/components/quantity_increment_buttons.dart';
import 'package:audio_player/models/cart.dart';
import 'package:audio_player/models/resturant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(builder: (context, resturant, child) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      fit: BoxFit.cover,
                      cartItem.food.imagePath,
                      height: 110,
                      width: 110,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        cartItem.food.name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        ' ${cartItem.food.price} Rs',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: QuantityIncrementButtons(
                      food: cartItem.food,
                      quantity: cartItem.quantity,
                      increment: () {
                        resturant.addToCart(
                            cartItem.food, cartItem.selectedAddons);
                      },
                      decrement: () => resturant.removeFromCart(cartItem),
                    ),
                  ),
                ],
              ),

//addons
              SizedBox(
                height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: cartItem.selectedAddons
                      .map((addon) => Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: FilterChip(
                                backgroundColor: Colors.grey.shade400,
                                // ignore: prefer_const_constructors
                                shape: StadiumBorder(
                                  side: BorderSide(color: Colors.grey.shade700),
                                ),
                                label: Row(
                                  children: [
                                    Text(addon.name),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '\$${addon.price}',
                                    ),
                                  ],
                                ),
                                onSelected: (value) {}),
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
