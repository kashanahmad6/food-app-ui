// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audio_player/models/food.dart';

class CartItem {
  final Food food;
  List<Addon> selectedAddons;
  int quantity;
  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quantity = 1,
  });

// get total price

  int get totalPrice {
    int addonPrice = selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonPrice) * quantity;
  }
}
