import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
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
              decoration: InputDecoration(
                // decorações do input
                border: InputBorder.none,
                labelText: "Search....",
                labelStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
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
    ;
  }
}
