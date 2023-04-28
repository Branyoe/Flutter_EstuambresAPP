import 'package:flutter/material.dart';
import 'package:test_app/src/screen/menu.dart';

class Recetas extends StatelessWidget {
  const Recetas({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Cuadrito(
                    size: size,
                    imagen:
                        'https://i.pinimg.com/564x/12/87/30/1287301e5b28e9388430dd2ccfb74d62.jpg',
                    index: 1,
                    route: 'semana',
                  ),
                  const Text('Semana 1')
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Cuadrito(
                    size: size,
                    imagen:
                        'https://i.pinimg.com/564x/b5/33/e2/b533e209d0b4691492a86f2f7b5b32e2.jpg',
                    index: 2,
                    route: 'semana',
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
                    Cuadrito(
                      size: size,
                      imagen:
                          'https://i.pinimg.com/564x/15/75/03/157503b338bc27edbdd694d35e0813c0.jpg',
                      index: 3,
                      route: 'semana',
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
                  Cuadrito(
                    size: size,
                    imagen:
                        'https://i.pinimg.com/564x/da/4f/78/da4f788f8c50af5c8cea1e385621f50c.jpg',
                    index: 4,
                    route: 'semana',
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

class Cuadrito extends StatelessWidget {
  final Size size;
  final int index;
  final String route;
  final String? text;
  final String? imagen;

  const Cuadrito({
    super.key,
    required this.size,
    required this.route,
    required this.index,
    this.imagen,
    this.text
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            width: size.width * .45,
            height: 120,
            decoration: BoxDecoration(color: imagen != null ? Colors.grey.shade200 : Colors.pink),
            child: imagen != null ? Image(
              image: NetworkImage(imagen!),
              fit: BoxFit.cover,
            ) : Center(
              child: 
                Text(text!, 
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF)
                      ),
                    ),
              ),
          ),
          //cuando des un clic te envie ahi//
          onTap: () => Navigator.pushNamed(
            context,
            route,
            arguments: {'index': index},
          ),
        )
      ],
    );
  }
}
