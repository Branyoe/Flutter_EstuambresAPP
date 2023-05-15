import 'package:flutter/material.dart';
import 'package:test_app/src/recetas_provider.dart';
import 'package:test_app/src/screen/dia.dart';
import 'package:test_app/src/screen/inicio.dart';
import 'package:test_app/src/screen/recetas.dart';
import 'package:test_app/src/screen/resta.dart';
import 'package:test_app/src/screen/semana.dart';
import 'package:test_app/src/screen/super.dart';

import 'package:provider/provider.dart';

void main() {
   runApp(
    ChangeNotifierProvider(
      create: (context) => RecetasProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const appTitle = 'Estuambres';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(),
      initialRoute: 'Inicio',
      routes: {
        'Inicio': (context) => const MyHomePage(),
        'Recetas': (context) => const Recetas(),
        'Super': (context) => const Super(),
        'Restau': (context) => const Resta(),
        'semana': (context) => const Semana(),
        'dia': (context) => const Dia(),
      }
    );
  }
}