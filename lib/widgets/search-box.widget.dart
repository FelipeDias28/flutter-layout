import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  // A cada Tick da tela é feito um refresh no state

  AnimationController? _controller;
  // Sempre que trabalhar com Animação, não esquecer de iniciar e fazer o dispose

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync:
          this, // Frash Rate da tela, referenciando o SingleTickerProviderStateMixin
      duration: const Duration(
        seconds: 1,
      ),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

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
