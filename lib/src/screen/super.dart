import 'package:test_app/src/screen/drawer.dart';
import 'package:flutter/material.dart';


class Super extends StatelessWidget {
  const Super({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compras'),
      ),
      drawer: const MyDrawer(),
      );
  }
}