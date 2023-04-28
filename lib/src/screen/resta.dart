import 'package:test_app/src/screen/menu.dart';
import 'package:flutter/material.dart';


class Resta extends StatelessWidget {
  const Resta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurantes'),
      ),
      drawer: const Menu(),
      
      
      );
  }
}