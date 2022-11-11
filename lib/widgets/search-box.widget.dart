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

  bool menuOpened = false;

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Search"),
        TextButton(
          onPressed: () {
            !menuOpened ? _controller?.forward() : _controller?.reverse();
            // forward => vai para frente
            // reverse => retorna a animação

            menuOpened = !menuOpened;
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _controller!,
            semanticLabel: "Menu Opened",
          ),
        )
      ],
    );
  }
}
