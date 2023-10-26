// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CashierCard extends StatelessWidget {
  const CashierCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // appBar: AppBar(),
        body: SafeArea(
          child: const TabBar(
            tabs: [
              Tab(text: 'Chats'),
              Tab(text: 'Chats'),
            ],
          ),
        ),
      ),
    );
  }
}
