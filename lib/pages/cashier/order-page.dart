// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:seblak_mandji/components/cashier/menu-card.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          MenuCard(),
          MenuCard(),
          MenuCard(),
          MenuCard(),
          MenuCard(),
          MenuCard(),
          MenuCard(),
          MenuCard(),
          MenuCard(),
          MenuCard(),
        ],
      ),
    );
  }
}
