import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_rotas/navegacao_comum/off_all/off_all_page3.dart';

class OffAllPage2 extends StatelessWidget {
  const OffAllPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off All Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage3();
                    },
                  ),
                  (route) => false,
                );
              },
              child: const Text(
                  'Got to Page 3 excluindo toda a arvore de navegacao com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage3();
                    },
                  ),
                  ModalRoute.withName('/OffAllHomePage'),
                );
              },
              child: const Text(
                  'Got to Page 3 excluindo parte da arvore de navegacao com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.offAll(
                  const OffAllPage3(),
                  predicate: ModalRoute.withName('/OffAllHomePage'),
                );
              },
              child: const Text('Got to Page 3 com GetX'),
            )
          ],
        ),
      ),
    );
  }
}
