import 'package:flutter/material.dart';

import 'header_seacher_box.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        HeaderWithSeacherBox(size: size),
        SingleChildScrollView(
          child: Column(
            children: [
              _botoesSuperior(context),
              _texto('Ola amigo'),
              _imageIgrejas(context, 'assets/image/i001.png', 'catedral'),
              _imageIgrejas(context, 'assets/image/i001.png', 'catedral'),
              _imageIgrejas(context, 'assets/image/i001.png', 'catedral')
            ],
          ),
        ),
      ]),
    );
  }

  _texto(String txt) {
    return Text(
      txt,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _imageIgrejas(context, String img, String nome) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                Image.asset(
                  img,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            nome,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: unused_element
_botoesSuperior(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/icones/alm.png', height: 80),
              Image.asset('assets/icones/amb.png', height: 80),
              Image.asset('assets/icones/aviso.png', height: 80),
              Image.asset('assets/icones/bc.png', height: 80),
              Image.asset('assets/icones/cami.png', height: 80),
              Image.asset('assets/icones/cell.png', height: 80),
              Image.asset('assets/icones/clie.png', height: 80),
            ],
          ),
        ],
      ),
    ),
  );
}
