import 'package:flutter/material.dart';

class LanchonetesPage extends StatelessWidget {
  const LanchonetesPage({super.key});

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
