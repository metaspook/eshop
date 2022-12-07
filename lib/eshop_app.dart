import 'package:eshop/pages/products_page.dart';
import 'package:flutter/material.dart';

class EShopApp extends StatelessWidget {
  const EShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductsPage(),
    );
  }
}
