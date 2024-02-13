import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/src/recetas_provider.dart';

class MyCard extends StatelessWidget {
  final Size size;
  final Map<String, int> indexData;
  final String route;
  final String? text;
  final String? imagen;

  const MyCard(
      {super.key,
      required this.size,
      required this.route,
      required this.indexData,
      this.imagen,
      this.text});

  @override
  Widget build(BuildContext context) {
    final recetasProvider = Provider.of<RecetasProvider>(context);

    return Column(
      children: [
        GestureDetector(
            child: Container(
              width: size.width * .45,
              height: 120,
              decoration: BoxDecoration(
                  color: imagen != null ? Colors.grey.shade200 : Colors.pink),
              child: imagen != null
                  ? Image(
                      image: NetworkImage(imagen!),
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Text("Error"),
                    )
                  : Center(
                      child: Text(
                        text!,
                        style: const TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                    ),
            ),
            onTap: () => {
              Navigator.pushNamed(context, route),
              recetasProvider.setIndexData(indexData)
            })
      ],
    );
  }
}
