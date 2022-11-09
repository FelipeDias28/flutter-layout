import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String image;
  final String title;

  const ProductPage({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        // Permite dois scrools, no header e no body
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              // Permite deslizar o item do header
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 400.0,
              floating: false,
              pinned: true, // fixo na tela
              flexibleSpace: FlexibleSpaceBar(
                // Faz o efeito sanfona, diminuindo e aumentando
                centerTitle: true,
                background: Hero(
                  tag: image, // a mesma tag do product-card
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10.0,
              ),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text("by Nike"),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                  "Nike Dri-FIT ia a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer"),
            ),
          ],
        ),
      ),
    );
  }
}
