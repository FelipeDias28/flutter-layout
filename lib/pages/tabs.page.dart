import 'package:flutter/material.dart';
import 'package:shopping/pages/cart.page.dart';
import 'package:shopping/pages/home.page.dart';
import 'package:shopping/pages/login.page.dart';

class TabsPage extends StatefulWidget {
  // precisa ser Stateful
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TabBarView(
        children: [
          HomePage(),
          CartPage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.shopping_cart),
          ),
          Tab(
            icon: Icon(Icons.perm_identity),
          ),
        ],
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.black38, // O ícone não selecionado
        indicatorSize: TabBarIndicatorSize.label, // O indicador do selecionado
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
      ),
    );
  }
}
