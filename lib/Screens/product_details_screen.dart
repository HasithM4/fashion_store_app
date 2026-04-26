import 'package:flutter/material.dart';
import 'cart_service.dart';
import 'cart_item.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const ProductDetailsScreen({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.grey[300],
              child: Image.network(
                image,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.image, size: 80);
                },
              ),
            ),

            const SizedBox(height: 20),

            Text(
              name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              price,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  CartService.addToCart(
                    CartItem(
                      name: name,
                      price: double.parse(price.replaceAll("\$", "")),
                      image: image,
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Added to Cart")),
                  );
                },
                child: const Text("Add to Cart"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
