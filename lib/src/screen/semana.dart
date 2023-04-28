import 'package:test_app/src/screen/menu.dart';
import 'package:flutter/material.dart';
import 'package:test_app/src/screen/recetas.dart';

class Semana extends StatelessWidget {
  const Semana({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Map args = ModalRoute.of(context)?.settings.arguments as Map;
    final int index = args['index'] as int;

    return Scaffold(
      appBar: AppBar(
        title: Text('Semana $index'),
      ),
      drawer: const Menu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  Cuadrito(
                    size: size,
                    index: 0,
                    route: 'dia',
                    text: 'Lunes',
                  ),
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Cuadrito(
                    size: size,
                    index: 0,
                    route: 'dia',
                    text: 'Martes',
                  ),
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
                  Cuadrito(
                    size: size,
                    index: 0,
                    route: 'dia',
                    text: 'Miercoles',
                  ),
                ],
              ),
              ]),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Cuadrito(
                    size: size,
                    index: 0,
                    route: 'dia',
                    text: 'Jueves',
                  ),
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
                  Cuadrito(
                    size: size,
                    index: 0,
                    route: 'dia',
                    text: 'Viernes',
                  ),
                ],
              ),
              ]),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Cuadrito(
                    size: size,
                    index: 0,
                    route: 'dia',
                    text: 'Otras recetas'
                  ),
                ],
              ),
            ]),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
