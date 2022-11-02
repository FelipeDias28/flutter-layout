import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

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
                background: Image.asset(
                  "assets/product-10.png",
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10.0,
              ),
              child: Text(
                "Dry Fit Long Sleeve",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("by Nike"),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
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
