// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/menu_Item.dart';
import 'package:app/pizza_data.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza menu"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: pizzaData
            .map((pizza) => MenuItem(pizza: pizza)).toList(),
        ),
      ),
    );
  }

  List<MenuItem> _buildItems() {
    // Lista Pizza => Lista MenuItem
    List<MenuItem> items = [];
    for (var pizza in pizzaData) {
      items.add(MenuItem(pizza: pizza));
    }
    return items;
  }
}
