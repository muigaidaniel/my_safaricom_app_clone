import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget menuCard(
    BuildContext context, String title, String icon, double height) {
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
    padding: const EdgeInsets.all(10),
    height: height,
    width: MediaQuery.of(context).size.width / 2 - 30,
    child: Row(
      children: [
        SvgPicture.asset(
          icon,
          color: Colors.green,
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(title),
        ),
      ],
    ),
  );
}
