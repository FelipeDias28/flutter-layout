import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';
import 'package:shopping/widgets/category/category-list.widget.dart';
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
      children: [
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
        productItem(context),
      ],
    ),
  );
}

Widget productItem(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(5),
    width: 170,
    color: Colors.black12,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          // Esse Widget pode ser utilizado em qualquer lugar para realizar uma ação
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductPage(),
              ),
            );
          },
          child: Image.asset(
            "assets/product-1.png",
            width: 170, // Sempre o mesmo do container
            height: 150,
            fit: BoxFit
                .cover, // Expande a imagem até a largura e altura cobrir 100% da imagem
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 50,
          child: Text(
            "Titulo do Produto",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        const Text(
          "Marca",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "\$ 200",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF00C569),
          ),
        ),
      ],
    ),
  );
}
