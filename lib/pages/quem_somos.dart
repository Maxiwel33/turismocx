import 'package:flutter/material.dart';

class QuemSomos extends StatelessWidget {
  const QuemSomos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: [
            _cartoes(context),
          ],
        ),
      ),
    );
  }
}

_cartoes(BuildContext context) {
  var titulo = 'Quem Somos';
  var subtitulo = 'Empresa de valor';
  var cadimagem = const AssetImage('assets/image/va01.png');
  var suporte = 'Estamos sempre pronto para a missão';
  return Card(
    elevation: 4.0,
    child: Column(
      children: [
        ListTile(
          title: Text(titulo),
          subtitle: Text(subtitulo),
          trailing: const Icon(Icons.favorite_outline),
        ),
        SizedBox(
          height: 200.0,
          child: Ink.image(
            image: cadimagem,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.centerLeft,
          child: Text(suporte),
        ),
        ButtonBar(
          children: [
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/quemsomos'),
              child: const Text('CONTATOS'),
            ),
            TextButton(
                onPressed: () {/* ... */}, child: const Text('MAIS OPÇOES')),
          ],
        )
      ],
    ),
  );
}
