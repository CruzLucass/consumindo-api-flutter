import 'package:consumindo_api_flutter/home/http/http_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/http/http_page.dart';
import 'home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          children: [GetPage(name: '/http', page: () => HttpPage())],
        ),
      ],
    );
  }
}
