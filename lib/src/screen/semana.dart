import 'package:provider/provider.dart';
import 'package:test_app/src/recetas_provider.dart';
import 'package:test_app/src/screen/menu.dart';
import 'package:flutter/material.dart';
import 'package:test_app/src/widgets/my_card.dart';

Map addDayInProps(String day ,Map oldProps){
  oldProps["day"] = day;
  debugPrint(day);
  return oldProps; 
}

class Semana extends StatelessWidget {
  const Semana({super.key});

  @override
  Widget build(BuildContext context) {

    final recetasProvider = Provider.of<RecetasProvider>(context); 
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Semana ${recetasProvider.weekIndex}"),
        
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
                    route: 'dia',
                    text: 'Lunes',
                    indexData: {
                      ...recetasProvider.indexData,
                      "dayIndex": 1,
                    },
                  ),
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  MyCard(
                    size: size,
                    route: 'dia',
                    text: 'Martes',
                    indexData: {
                      ...recetasProvider.indexData,
                      "dayIndex": 2,
                    },
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
                  MyCard(
                    size: size,
                    route: 'dia',
                    text: 'Miercoles',
                    indexData: {
                      ...recetasProvider.indexData,
                      "dayIndex": 3,
                    },
                  ),
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
                    route: 'dia',
                    text: 'Jueves',
                    indexData: {
                      ...recetasProvider.indexData,
                      "dayIndex": 4,
                    },
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
                  MyCard(
                    size: size,
                    route: 'dia',
                    text: 'Viernes',
                    indexData: {
                      ...recetasProvider.indexData,
                      "dayIndex": 5,
                    },
                  ),
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
                    route: 'dia',
                    text: 'Otras recetas',
                    indexData: {
                      ...recetasProvider.indexData,
                      "dayIndex": 6,
                    },
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
