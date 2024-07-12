import 'package:audio_player/models/cart.dart';
import 'package:audio_player/models/food.dart';
import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class Resturant extends ChangeNotifier {
  final List<Food> _menu = [
    //  burgers
    Food(
      name: 'Cheese Burger',
      description:
          'A juicy beef petty with melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/burgers/burger1.jpg',
      price: 550,
      category: FoodCatergory.burgers,
      addon: [
        Addon(name: 'Extra Cheese', price: 60),
        Addon(name: 'Extra petty', price: 40),
      ],
    ),
    Food(
      name: 'Cheese Burger',
      description:
          'A juicy beef petty with melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/burgers/burger2.jpg',
      price: 650,
      category: FoodCatergory.burgers,
      addon: [
        Addon(name: 'Extra Cheese', price: 40),
        Addon(name: 'Extra petty', price: 60),
      ],
    ),
    Food(
      name: 'Cheese Burger',
      description:
          'A juicy beef petty with melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/burgers/burger3.jpg',
      price: 900,
      category: FoodCatergory.burgers,
      addon: [
        Addon(name: 'Extra Cheese', price: 30),
        Addon(name: 'Extra petty', price: 70),
      ],
    ),
    Food(
      name: 'Cheese Burger',
      description:
          'A juicy beef petty with melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/burgers/burger4.jpg',
      price: 700,
      category: FoodCatergory.burgers,
      addon: [
        Addon(name: 'Extra Cheese', price: 30),
        Addon(name: 'Extra petty', price: 80),
      ],
    ),
    Food(
      name: 'Cheese Burger',
      description:
          'A juicy beef petty with melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/burgers/burger5.jpg',
      price: 850,
      category: FoodCatergory.burgers,
      addon: [
        Addon(name: 'Extra Cheese', price: 50),
        Addon(name: 'Extra petty', price: 90),
      ],
    ),

    // desserts

    Food(
      name: 'Brownie ',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/desserts/dessert1.jpg',
      price: 49,
      category: FoodCatergory.desserts,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),
    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/desserts/dessert2.jpg',
      price: 49,
      category: FoodCatergory.desserts,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),

    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/desserts/dessert3.jpg',
      price: 49,
      category: FoodCatergory.desserts,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),

    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/desserts/dessert4.jpg',
      price: 49,
      category: FoodCatergory.desserts,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),

    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/desserts/dessert5.jpg',
      price: 49,
      category: FoodCatergory.desserts,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),

    //  drinks
    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/drinks/drink1.jpg',
      price: 49,
      category: FoodCatergory.drinks,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),

    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/drinks/drink2.jpg',
      price: 49,
      category: FoodCatergory.drinks,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),

    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/drinks/drink3.jpg',
      price: 49,
      category: FoodCatergory.drinks,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),
    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/drinks/drink4.jpg',
      price: 49,
      category: FoodCatergory.drinks,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),
    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/drinks/drink5.jpg',
      price: 49,
      category: FoodCatergory.drinks,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),

    // salads

    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/salads/salad1.jpg',
      price: 49,
      category: FoodCatergory.salad,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),

    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/salads/salad2.jpg',
      price: 49,
      category: FoodCatergory.salad,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),

    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/salads/salad3.jpg',
      price: 49,
      category: FoodCatergory.salad,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),

    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/salads/salad4.jpg',
      price: 49,
      category: FoodCatergory.salad,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),

    Food(
      name: 'Brownie slice',
      description:
          'A sweet brownie with molten chocolate  h melted cheddar, lettace, onion and a hint of tomato and pickles',
      imagePath: 'assets/images/salads/salad5.jpg',
      price: 49,
      category: FoodCatergory.salad,
      addon: [
        Addon(name: 'Extra Cheese', price: 1),
        Addon(name: 'Extra petty', price: 4),
      ],
    ),
  ];

// getters

  List<Food> get menu => _menu;

// opertations

//user cart

  final List<CartItem> _cart = [];

  // get cart

  List<CartItem> get cart => _cart;

// add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are same

      bool isSameFood = item.food == food;

      // check if the food addons are same

      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    // if cart item is not null increase its quantity

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

// remove from cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

// get total price of cart

  int getTotalPrice() {
    int total = 0;
    for (CartItem cartItem in _cart) {
      int itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }
// get total numbers of item in the cart

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

// clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

// helpers

// receipt

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.write(formattedDate);
    receipt.writeln();
    receipt.writeln('------------');
    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity}  x  ${cartItem.food.name} - ${cartItem.food.price}");

      receipt.writeln();
    }
    receipt.writeln('------------');
    receipt.writeln();
    receipt.writeln('Total Items  : ${getTotalItemCount()}');
    receipt.writeln('Total price  : ${getTotalPrice()} Rs');

    return receipt.toString();
  }
}
