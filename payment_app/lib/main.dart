import 'package:flutter/material.dart';
import 'screens/product_page.dart';

void main() => runApp(const PaymentApp());

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      // FIXED: Used ProductPage() without underscore to match the class name
      home: const ProductPage(),
    );
  }
}