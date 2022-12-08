import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';

bottomNav(context) {
  return SCBottomBarDetails(
      circleColors: [Colors.white, Colors.orange, Colors.redAccent],
      iconTheme: const IconThemeData(color: Colors.black45),
      activeIconTheme: const IconThemeData(color: Colors.green),
      backgroundColor: Colors.white,
      titleStyle: const TextStyle(color: Colors.black45, fontSize: 12),
      activeTitleStyle: const TextStyle(
          color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
      actionButtonDetails: SCActionButtonDetails(
          color: Colors.green,
          icon: const Icon(
            Icons.expand_less,
            color: Colors.white,
          ),
          elevation: 2),
      elevation: 2.0,
      items: [
        // Suggested count : 4
        SCBottomBarItem(
            icon: Icons.verified_user, title: "Home", onPressed: () {}),
        SCBottomBarItem(
            icon: Icons.supervised_user_circle,
            title: "M-PESA",
            onPressed: () {
              Navigator.popAndPushNamed(context, '/mpesa');
            }),
        SCBottomBarItem(
            icon: Icons.notifications, title: "Discover", onPressed: () {}),
        SCBottomBarItem(
            icon: Icons.details, title: "Account", onPressed: () {}),
      ],
      circleItems: [
        //Suggested Count: 3
        SCItem(icon: const Icon(Icons.add), onPressed: () {}),
        SCItem(icon: const Icon(Icons.print), onPressed: () {}),
        SCItem(icon: const Icon(Icons.map), onPressed: () {}),
      ],
      bnbHeight: 60 // Suggested Height 80
      );
}
