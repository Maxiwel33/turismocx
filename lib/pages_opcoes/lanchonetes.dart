import 'package:flutter/material.dart';

class Lanchonetes extends StatelessWidget {
  const Lanchonetes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lanchonetes'),
      ),
      body: Column(
        children: const [
          Text('Lachonetes'),
        ],
      ),
    );
  }
}
