import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_rotas/navegacao_comum/navegacao_comum_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Jornada GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavegacaoComumHomePage(),
    );
  }
}
