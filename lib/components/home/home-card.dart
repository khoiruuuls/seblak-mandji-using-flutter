// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_if_null_operators, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomeCard extends StatelessWidget {
  final String? text;
  final String? secondaryText;
  final LineIcons? icon;
  final IconData? myIcon;

  const HomeCard(
      {this.text, this.icon, this.secondaryText, this.myIcon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                myIcon,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                text ?? "default",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            secondaryText ?? "null",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
