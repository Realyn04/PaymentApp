import 'package:flutter/material.dart';
import 'checkout_page.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Store')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shopping_bag, size: 100),
            const Text('Cool Smartphone', style: TextStyle(fontSize: 24)),
            const Text('₱15,000.00', style: TextStyle(color: Colors.green, fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckoutPage(
                      productName: 'Cool Smartphone',
                      price: 15000.0,
                      quantity: 1,
                    ),
                  ),
                );
              },
              child: const Text('Buy Now'),
            )
          ],
        ),
      ),
    );
  }
}