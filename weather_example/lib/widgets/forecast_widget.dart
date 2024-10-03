import 'package:flutter/material.dart';

class ForecastWidget extends StatelessWidget {
  final DateTime initDateTime;
  final Dataserie dataserie;

  const ForecastWidget({
    super.key,
    required this.initDateTime,
    required this.dataserie,
  });

  @override
  Widget build(BuildContext context) {
    final DateTime dateTime =
        initDateTime.add(Duration(hours: dataserie.timepoint));

    return Row(
      children: [
        Column(
          children: [
            Text('Dia ${dateTime.day}'),
            Text('${dateTime.hour}:${dateTime.minute}'),
          ],
        ),
        const Icon(Icons.sunny),
        Text('${dataserie.temp} ºC'),
      ],
    );
  }
}
