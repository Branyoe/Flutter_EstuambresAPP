import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/src/recetas_provider.dart';
import 'package:test_app/src/screen/menu.dart';
import 'package:test_app/src/utils/list_to_ul.dart';
import '../recetas_data.dart';

class Dia extends StatelessWidget {
  const Dia({super.key});

  @override
  Widget build(BuildContext context) {
    final recetasProvider = Provider.of<RecetasProvider>(context);
    Map recipeData = recetas[recetasProvider.weekIndex][recetasProvider.dayIndex] ?? {};
    String name = recipeData["nombre"] ?? "...";
    List<String> ingredients = recipeData["ingredientes"] ?? [];
    List<String> preparation = recipeData["preparacion"] ?? [];
    List<String> tips = recipeData["tips"] ?? [];
    String imageUrl = recipeData["img"] ?? "";
    String duration = recipeData["duracionMinutos"] ?? "...";

    return Scaffold(
        appBar: AppBar(
          title: Text(
            dayIndexToDayName(recetasProvider.dayIndex),
            style: STYLES["AppBarTitle"],
          ),
        ),
        drawer: const Menu(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            //Main image
            SizedBox( 
              height: 200,
              width: double.infinity,
              child: Image(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Text("Error al cargar la imagen"),
              ),
            ),
            //Recipe name
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: STYLES["title"],
                  ),
                ],
              ),
            ),
            //Scroll
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: [
                      //Ingredients title and duration pill
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ingredientes:',
                            style: STYLES["sub-title"],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pink),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: [
                                Row(children: [
                                  Text(
                                    duration,
                                    style: STYLES["duration-text"],
                                  ),
                                  const SizedBox(width: 5,),
                                  const Icon(
                                    Icons.access_alarm,
                                    color: Colors.white,
                                  )
                                ]),
                              ]),
                            ),
                          ),
                        ],
                      ),
                      //ingredients list
                      ...strListToWidgetList(ingredients, true),
                      const SizedBox(height: 20,),
                      //Preparation title
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Preparación:',
                            style: STYLES["sub-title"],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      //preparation list
                      ...strListToWidgetList(preparation, false),
                      const SizedBox(height: 20,),
                      //Tips title
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Tips:',
                            style: STYLES["sub-title"],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      //Tips list
                      ...strListToWidgetList(tips, true),
                    ],
                  ),
                ),
              ),
            )
          ]
        ), 
      );
  }
}

// ignore: constant_identifier_names
const Map STYLES = {
  "title": TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  ),
  "sub-title": TextStyle(
    fontSize: 20,
  ),
  "duration-text": TextStyle(
    color: Colors.white, 
    fontWeight: FontWeight.bold, 
    fontSize: 20
  ),
  "list-text": TextStyle(
    fontSize: 15,
    
  )
};

String dayIndexToDayName(int index) {
  Map dayNames = {
    0: 'null',
    1: 'Lunes',
    2: 'Martes',
    3: 'Miercoles',
    4: 'Jueves',
    5: 'Viernes',
    6: 'Otras recetas',
  };
  return dayNames[index];
}
