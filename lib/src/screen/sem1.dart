import 'package:test_app/src/screen/menu.dart';
import 'package:flutter/material.dart';

class S1 extends StatelessWidget {
  const S1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semana 1'),
      ),
      //es una funcion para el drawer//
      drawer: const Menu(),
      );
  }
}