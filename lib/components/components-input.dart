// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ComponentsInput extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;

  const ComponentsInput({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          obscureText: obsecureText,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
