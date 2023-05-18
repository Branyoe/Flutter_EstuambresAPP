import 'package:test_app/src/screen/drawer.dart';
import 'package:flutter/material.dart';
import 'package:test_app/src/restaurants_data.dart';
import 'package:test_app/src/widgets/restaurant_card.dart';

class Restaurants extends StatelessWidget {
  const Restaurants({super.key});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurantes"),
        
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          children: resturantsData.map((key, value) {
            return MapEntry(
              key, 
              RestaurantCard(size: size, text: key)
            );
          }).values.toList()
        )
      ),
    );
  }
}

