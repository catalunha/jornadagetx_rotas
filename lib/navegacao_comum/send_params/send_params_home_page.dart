import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_rotas/navegacao_comum/send_params/send_params_page1.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviando parametros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SendParamsPage1();
                    },
                    settings: const RouteSettings(
                        arguments: 'Parametro pelo Flutter Nativo'),
                  ),
                );
              },
              child: const Text('Got to Page 1 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const SendParamsPage1(),
                    arguments: 'Parametro pelo GetX');
              },
              child: const Text('Got to Page 1 com GetX'),
            )
          ],
        ),
      ),
    );
  }
}
