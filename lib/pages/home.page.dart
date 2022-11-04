import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category-list.widget.dart';
import 'package:shopping/widgets/product/product-card.widget.dart';
import 'package:shopping/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        color: const Color(0xFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 60,
            ),
            const SearchBox(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 90,
              child: CategoryList(),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 300,
              child: productList(context),
            ),
          ],
        ),
      ),
    );
  }
}

Widget productList(BuildContext context) {
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
