import 'package:flutter/material.dart';
import 'package:turismoapp/pages/menu.dart';
import 'package:turismoapp/pages/quem_somos.dart';
import 'package:turismoapp/pages_opcoes/lanchonetes.dart';

import 'pages/login_senha.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginSenha(),
          '/principal': (context) => const MenuPage(),
          '/lanchonete': (context) => const Lanchonetes(),
          '/quemsomos': (context) => const QuemSomos(),
        }

        //home: const LoginSenha(),
        );
  }
}
