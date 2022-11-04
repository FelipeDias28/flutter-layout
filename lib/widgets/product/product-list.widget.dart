import 'package:flutter/material.dart';
import 'package:shopping/widgets/product/product-card.widget.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: ListView(
        scrollDirection: Axis.horizontal, // Altera a direção do scrool
        children: const [
          ProductCard(
            image: "assets/product-10.png",
            title: "Nike Dry-Fit Long Sleeve",
            description: "Nike",
            price: 150,
          ),
          ProductCard(
            image: "assets/product-1.png",
            title: "BeopPlay Speaker",
            description: "Bang and Olufsen",
            price: 755,
          ),
          ProductCard(
            image: "assets/product-2.png",
            title: "Leather Wristwatch",
            description: "Tag Heuer",
            price: 450,
          ),
          ProductCard(
            image: "assets/product-3.png",
            title: "Smart Bluetooth Speaker",
            description: "Google Inc",
            price: 450,
          ),
        ],
      ),
    );
  }
}
