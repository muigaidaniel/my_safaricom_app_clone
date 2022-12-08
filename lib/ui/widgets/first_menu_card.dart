import 'package:flutter/material.dart';

Widget firstMenuCard(BuildContext context, String image, double height) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 0.5,
          blurRadius: 3,
          offset: const Offset(0, 1),
        ),
      ],
    ),
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    height: height,
    width: MediaQuery.of(context).size.width / 2 - 30,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    ),
  );
}
