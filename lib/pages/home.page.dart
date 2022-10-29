import 'package:flutter/material.dart';

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
            search(),
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
            SizedBox(
              height: 90,
              child: categoryList(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    padding: const EdgeInsets.only(left: 20),
    height: 60,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.1),
      borderRadius: const BorderRadius.all(
        Radius.circular(128),
      ),
    ),
    child: Row(
      children: [
        const Icon(Icons.search),
        Container(
          width: 300,
          padding: const EdgeInsets.only(left: 10),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              // decorações do input
              border: InputBorder.none,
              labelText: "Search....",
              labelStyle: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w300,
                fontSize: 16.0,
              ),
            ),
            style: const TextStyle(
              // estilo do texto dentro do input, o que o usuário digita
              fontSize: 20,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget categoryList() {
  return SizedBox(
    width: 70,
    child: ListView(
      scrollDirection: Axis.horizontal, // Altera a direção do scrool
      children: [
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
      ],
    ),
  );
}

Widget categoryItem() {
  return Container(
    width: 70,
    height: 70,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
      // Alteração na forma do container
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(1, 1),
          blurRadius: 5,
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(64),
      ),
    ),
    child: Image.asset("assets/Icon_Devices.png"),
  );
}
