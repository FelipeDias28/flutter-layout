import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category-list.widget.dart';
import 'package:shopping/widgets/product/product-list.widget.dart';
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
            const SizedBox(
              height: 300,
              child: ProductList(),
            ),
          ],
        ),
      ),
    );
  }
}
