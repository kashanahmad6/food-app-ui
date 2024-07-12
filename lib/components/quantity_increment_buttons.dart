import 'package:audio_player/models/food.dart';
import 'package:flutter/material.dart';

class QuantityIncrementButtons extends StatelessWidget {
  final Food food;
  final int quantity;
  final VoidCallback increment;
  final VoidCallback decrement;
  const QuantityIncrementButtons(
      {super.key,
      required this.food,
      required this.quantity,
      required this.increment,
      required this.decrement});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade700),
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey.shade400,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: decrement,
            icon: const Icon(
              Icons.remove,
              size: 20,
            ),
          ),
          SizedBox(
            width: 20,
            child: Center(
              child: Text(
                quantity.toString(),
              ),
            ),
          ),
          IconButton(
            onPressed: increment,
            icon: const Icon(
              Icons.add,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
