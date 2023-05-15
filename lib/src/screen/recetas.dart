import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/src/recetas_provider.dart';
import 'package:test_app/src/screen/menu.dart';
import 'package:test_app/src/widgets/my_card.dart';

class Recetas extends StatelessWidget {
  const Recetas({super.key});

  @override
  Widget build(BuildContext context) {
    final recetasProvider = Provider.of<RecetasProvider>(context);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recetas'),
        
      ),
      drawer: const Menu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  MyCard(
                    size: size, 
                    route: 'semana', 
                    indexData: {
                      ...recetasProvider.indexData, 
                      "weekIndex": 1
                    },
                    imagen: 'https://i.pinimg.com/564x/da/4f/78/da4f788f8c50af5c8cea1e385621f50c.jpg',

                  ),
                  const Text("Semana 1")
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  MyCard(
                    size: size, 
                    route: 'semana', 
                    indexData: {
                      ...recetasProvider.indexData, 
                      "weekIndex": 2
                    },
                    imagen: 'https://i.pinimg.com/564x/da/4f/78/da4f788f8c50af5c8cea1e385621f50c.jpg',

                  ),
                  const Text("Semana 2")
                ],
              ),
            ]),
            const SizedBox(
              height: 15,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: [
                    MyCard(
                      size: size, 
                      route: 'semana', 
                      indexData: {
                        ...recetasProvider.indexData, 
                        "weekIndex": 3
                      },
                      imagen: 'https://i.pinimg.com/564x/da/4f/78/da4f788f8c50af5c8cea1e385621f50c.jpg',
                    ),
                    const Text('Semana 3'),
                  ],
                ),
              ]),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  MyCard(
                    size: size, 
                    route: 'semana', 
                    indexData: {
                      ...recetasProvider.indexData, 
                      "weekIndex": 4
                    },
                    imagen: 'https://i.pinimg.com/564x/da/4f/78/da4f788f8c50af5c8cea1e385621f50c.jpg',

                  ),
                  const Text('Semana 4'),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

