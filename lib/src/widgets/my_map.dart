import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const MAPBOX_ACCESS_TOKEN = "pk.eyJ1IjoiYnJhbnlvZSIsImEiOiJjbDlncTVwaWowOWtrM3Vtd2R2aDZ3c3o0In0.MoFF_EjlzMATPJDHr-zqXA";
// ignore: constant_identifier_names
const MAPBOX_STYLE = 'mapbox/streets-v12';

class MyMap extends StatelessWidget {
    final MapController mapController = MapController();
    final double lat;
    final double lng;

    MyMap({super.key, required this.lat, required this.lng});

    @override
    Widget build(BuildContext context) {
      return FlutterMap(
          mapController: mapController,
          options: MapOptions(
            center: LatLng(lat, lng), // Coordenadas de ubicación inicial
            zoom: 18.0,
            minZoom: 10.0,
            maxZoom: 18.00,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}@2x?access_token={accessToken}',
              additionalOptions: const {
                'accessToken': MAPBOX_ACCESS_TOKEN, // Reemplaza con tu propio token de acceso de Mapbox
                'id': MAPBOX_STYLE, // Reemplaza con tu propio ID de estilo de Mapbox
              },
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(lat, lng),
                  width: 80,
                  height: 80,
                  builder: (context) => const Icon(Icons.location_on, color: Colors.red),
                )
              ],
            ),
          ],
        );
    }
  }