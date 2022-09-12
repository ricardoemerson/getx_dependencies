import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakelock/wakelock.dart';

import 'pages/basic/basic_page.dart';
import 'pages/home/home_page.dart';
import 'pages/methods/create/create_page.dart';
import 'pages/methods/delete/delete_page.dart';
import 'pages/methods/delete/delete_sub/delete_sub_page.dart';
import 'pages/methods/lazy_put/lazy_put_page.dart';
import 'pages/methods/methods_page.dart';
import 'pages/methods/put/put_page.dart';
import 'pages/methods/put_async/put_async_page.dart';
import 'pages/methods/replace/replace_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Wakelock.enable();

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
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/basic', page: () => const BasicPage()),
        GetPage(
          name: '/methods',
          page: () => const MethodsPage(),
          children: [
            GetPage(name: '/put', page: () => const PutPage()),
            GetPage(name: '/lazy-put', page: () => LazyPutPage()),
            GetPage(name: '/put-async', page: () => PutAsyncPage()),
            GetPage(name: '/create', page: () => CreatePage()),
            GetPage(name: '/replace', page: () => ReplacePage()),
            GetPage(
              name: '/delete',
              page: () => DeletePage(),
              children: [
                GetPage(name: '/sub', page: () => const DeleteSubPage()),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
