import 'package:flutter/material.dart';
import 'package:test_app/src/recetas_provider.dart';
import 'package:test_app/src/screen/day.dart';
import 'package:test_app/src/screen/home.dart';
import 'package:test_app/src/screen/recipes.dart';
import 'package:test_app/src/screen/restaurant_map.dart';
import 'package:test_app/src/screen/restaurants.dart';
import 'package:test_app/src/screen/weeks.dart';
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
      home: const Home(),
      initialRoute: 'Inicio',
      routes: {
        'Inicio': (context) => const Home(),
        'Recetas': (context) => const Recipes(),
        'Super': (context) => const Super(),
        'Restau': (context) => const Restaurants(),
        'rest_map': (context) => const RestaurantMap(),
        'semana': (context) => const Weeks(),
        'dia': (context) => const Day(),
      }
    );
  }
}