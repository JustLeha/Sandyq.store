import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Алматы карта')),
        body: MapPage(),
      ),
    );
  }
}

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(43.238949, 76.889709), // Координаты центра Алматы
        zoom: 13.0, // Уровень масштаба
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          subdomains: ['a', 'b', 'c'],
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(43.256670, 76.928610), // Координаты MEGA Park
              builder: (ctx) => Icon(Icons.location_on, color: Colors.red, size: 30),
            ),
            Marker(
              point: LatLng(43.240370, 76.890080), // Алматинский Технологический Университет
              builder: (ctx) => Icon(Icons.location_on, color: Colors.blue, size: 30),
            ),
            // Добавьте другие метки по аналогии
          ],
        ),
      ],
    );
  }
}