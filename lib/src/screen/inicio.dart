import 'package:test_app/src/screen/menu.dart';
import 'package:flutter/material.dart';

//MyWidget asi se va a mandar a llamar en los otros archivos//
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
// Un widget es un objeto visual y de diseño que representa una parte de la interfaz de usuario de una aplicación, y se utiliza para construir la estructura visual de la aplicación.//
// "build" que define cómo se debe dibujar en la pantalla y cómo debe responder a los cambios de estado del widget//
  Widget build(BuildContext context) {
    return  Scaffold(//el lienzo de la pagina//
      //parte de arriba de la aplicacion//
      appBar: AppBar(
        title: const Text('Bienvenido'),
      ),
      //para ponerle ese color de fondo a esa parte de app//
      backgroundColor: const Color.fromARGB(239, 255, 235, 253),
      //el cuerpo de este archivo, que se posiciona en el centro//
      //tiene como hijo una columna//
      body: Center(
        child: Column(
          //para que se aline en el centro//
          mainAxisAlignment: MainAxisAlignment.center,
          children:const[
          Text('Estuambres'
          
          ),
        ],
      ),
    ),
    //funcion del drawer(menu lateral)//
      drawer: const Menu(),
  );
 }
}
