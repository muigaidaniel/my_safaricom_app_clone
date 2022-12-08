import 'package:flutter/material.dart';

Widget customButton(context, secCol, height, child) {
  return Container(
    height: height,
    width: double.infinity,
    margin: const EdgeInsets.fromLTRB(5, 5, 5, 10),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: secCol == 0 ? Colors.white : Colors.red,
        onPrimary: secCol == 0 ? Colors.green : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: child,
    ),
  );
}
