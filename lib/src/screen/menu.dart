import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });
  //para que funcione el menu lateral (drawer)//

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //padding sirve para darle espacio arriba a la listView//
      child: Padding(
        padding: const EdgeInsets.all(20),
        //Son los textos que aparecen en el drawer y te dirigen a los otros archivos//
        child: ListView(
          children: [
            ListBody(
              children: [
//ListTile para que comode los titulos en forma de lista y title el nombre que va aparecer//
//onTap define la acción que se debe realizar cuando un usuario toca un widget en la pantalla, para navegar a otra pantalla
//Navigator.pushReplacementNamed es para navegue de un archivo a otro, pushReplacementNamed para que reemplace un archivo por el otro y no queden encimados//
//leading para ajustar el espaciado entre líneas de texto en un widget de texto
                ListTile(
                    title: const Text("Recetas"),
                    leading: const Icon(Icons.cake),
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, 'Recetas')),
                const SizedBox(
                  height: 10,
                ), //hacia que pantalla te va a dirigir//
                ListTile(
                    title: const Text("Compras"),
                    leading: const Icon(Icons.shopping_cart_checkout_sharp),
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, 'Super')),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                    title: const Text("Restaurantes"),
                    leading: const Icon(Icons.restaurant),
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, 'Restau')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
