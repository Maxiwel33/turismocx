import 'package:flutter/material.dart';

class HoteisCaxias extends StatelessWidget {
  const HoteisCaxias({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotéis Caxienses'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.view_column_sharp),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.view_list_sharp)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _alecrim('assets/hoteis/01.jpg'),
            _alecrim('assets/hoteis/P01.jpg'),
            _alecrim('assets/hoteis/H01.jpg'),
            _alecrim('assets/hoteis/E01.jpg'),
          ],
        ),
      ),
    );
  }
}

_alecrim(String img) {
  return Center(
    child: Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 0.10,
            offset: Offset(0.5, 0.80),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    ),
  );
}
