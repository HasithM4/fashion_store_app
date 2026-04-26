import 'package:fashion_store_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class ProductListingScreen extends StatelessWidget {
  const ProductListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products")),

      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: const [
          ProductCard(name: "T-Shirt", price: "\$25", image: ""),
          ProductCard(name: "Sneakers", price: "\$80", image: ""),
          ProductCard(name: "Jacket", price: "\$120", image: ""),
        ],
      ),
    );
  }
}
