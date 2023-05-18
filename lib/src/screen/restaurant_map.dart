import 'package:flutter/material.dart';
import 'package:test_app/src/widgets/my_map.dart';
import 'package:test_app/src/restaurants_data.dart';

class RestaurantMap extends StatelessWidget {
  const RestaurantMap({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    String restName = arguments['restName'] ?? "";
    Map restaurantData = resturantsData[arguments['restName']] ?? {};

    return Scaffold(
      appBar: AppBar(
        title: Text(restName),
      ),
      body: Center(
        child: MyMap(lat: restaurantData['lat'], lng: restaurantData['lng']),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 130,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 2,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 3 / 1.8,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 10, 
                    width: 10,
                    child: Image(
                      image: NetworkImage(restaurantData['img']),
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Center(child: Icon(Icons.error)),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SafeArea(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                restName,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          ),
                        ],),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}