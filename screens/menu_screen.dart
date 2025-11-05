import 'package:flutter/material.dart';
import '../widgets/food_card.dart';
import 'item_detail_screen.dart';
import 'cart_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final foods = [
      {"name": "Pastillas", "price": 55.0, "image": "🍬"},
      {"name": "Polvoron", "price": 40.0, "image": "🍪"},
      {"name": "Peanut Brittle", "price": 35.0, "image": "🥜"},
      {"name": "Shing-a-ling", "price": 20.0, "image": "🍥"},
      {"name": "Pili Nuts", "price": 50.0, "image": "🌰"},
      {"name": "Macapuno Balls", "price": 40.0, "image": "🍡"},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF3E5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A1B9A),
        title: const Text(
          "Sweet Bites PH",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: foods.length,
        itemBuilder: (context, index) {
          final food = foods[index];
          return FoodCard(
            name: food["name"]!,
            price: food["price"]!,
            emoji: food["image"]!,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ItemDetailScreen(food: food),
                ),
              );
            },
          );
        },
      ),
    );
  }
}