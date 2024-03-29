import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {
  const AwaitParamsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Await Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop('Retornado com Flutter Nativo');
              },
              child: const Text('Retornando param com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.back(result: 'Retornado por GetX');
              },
              child: const Text('Retornando param com Page 1 com GetX'),
            )
          ],
        ),
      ),
    );
  }
}
