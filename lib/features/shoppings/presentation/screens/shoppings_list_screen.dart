import 'package:flutter/material.dart';

class ShoppingsListScreen extends StatelessWidget {
  const ShoppingsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff4FC0DA),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 410),
            const Text(
              'Compras',
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}