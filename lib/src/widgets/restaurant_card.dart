import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final Size size;
  final String text;

  const RestaurantCard({
    super.key,
    required this.size,
    required this.text
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        GestureDetector(
          child: Container(
            width: double.infinity,
            height: size.height * 0.2,
            decoration: const BoxDecoration(
              color:Colors.pink),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(color: Color(0xFFFFFFFF)),
                ),
              ),
          ),
          onTap: () => {
            Navigator.pushNamed(
              context, 
              'rest_map',
              arguments: {
                'restName': text,
              }
            ),
          }
        ),
      ],
    );
  }
}
