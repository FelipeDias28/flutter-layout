import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
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
                  builder: (context) => ProductPage(
                    image: image,
                    title: title,
                  ),
                ),
              );
            },
            child: Image.asset(
              image,
              width: 170, // Sempre o mesmo do container
              height: 150,
              fit: BoxFit
                  .cover, // Expande a imagem até a largura e altura cobrir 100% da imagem
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "\$ $price", // Não precisa dos colchetes pois não esta fazendo nenhuma operação, somente mostra o valor
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
