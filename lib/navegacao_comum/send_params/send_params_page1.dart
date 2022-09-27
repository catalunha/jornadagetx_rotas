import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsPage1 extends StatelessWidget {
  const SendParamsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paramNativo =
        ModalRoute.of(context)?.settings.arguments ?? 'Param Nativo Nulo';
    final paramGetX = Get.arguments ?? 'Param GetX Nulo';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recebendo params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('paramNativo: $paramNativo'),
            Text('paramGetX: $paramGetX'),
          ],
        ),
      ),
    );
  }
}
