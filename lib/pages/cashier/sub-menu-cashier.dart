// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SubMenuCashier extends StatelessWidget {
  final String text;
  final IconData icon;
  const SubMenuCashier({required this.icon, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: 15),
            Icon(
              icon,
              size: 16,
              color: Colors.white,
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(54),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 2.0,
        ),
      ),
    );
  }
}
