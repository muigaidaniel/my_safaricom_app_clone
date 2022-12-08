import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:safaricom_clone/models/menu_items.dart';
import 'package:safaricom_clone/ui/screens/home.dart';
import 'package:safaricom_clone/ui/screens/mpesa_screen.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(
        menuItems: menuItems,
      ),
      //darkTheme: ThemeData.dark(),
      theme: ThemeData(primarySwatch: Colors.green),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/mpesa': (context) => MpesaScreen(menuItems: menuItems),
      },
    );
  }
}
