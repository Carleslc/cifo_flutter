import 'package:flutter/material.dart';

import '../location.dart';
import '../main.dart';
import '../services/weather_service.dart';

class WeatherList extends StatefulWidget {
  final LatLng location;

  const WeatherList({super.key, required this.location});

  @override
  State<WeatherList> createState() => _WeatherListState();
}

class _WeatherListState extends State<WeatherList> {
  final WeatherService _weatherService = WeatherService();

  Meteo? _meteo;

  @override
  void initState() {
    super.initState();
    fetchMeteo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(WeatherApp.title),),
      body: _meteo == null ? const CircularProgressIndicator() : ListView(
      children: meteo.dataseries.map((dataseries) => {
        return const ListTile();
      })
    ));
  }

  void fetchMeteo() async {
    final Meteo meteo = await _weatherService.fetchData(widget.location.lat, widget.location.long);
    
    setState(() {
      _meteo = meteo;
    });
  }
}
