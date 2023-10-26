// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ComponentsButton extends StatelessWidget {
  final Function()? onTap;
  final Color? bgColor;
  final String text;
  final Color? textColor;
  final bool showBorder;

  const ComponentsButton(
      {super.key,
      this.showBorder = false,
      this.textColor,
      this.bgColor,
      required this.onTap,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: bgColor ?? Colors.white, //conditional
          borderRadius: BorderRadius.circular(5),
          border: showBorder
              ? Border.all(width: 1.5, color: Colors.white)
              : null, // conditional
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16,
              color: textColor, //conditional
            ),
          ),
        ),
      ),
    );
  }
}
