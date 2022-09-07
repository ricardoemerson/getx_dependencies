import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/basic/basic_page.dart';
import 'pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Dependencies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: HomePage.new),
        GetPage(name: '/basic', page: BasicPage.new),
      ],
    );
  }
}
