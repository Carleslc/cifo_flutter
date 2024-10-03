import 'package:http/http.dart' as http;

class WeatherService {
  static const apiUrl = 'https://www.7timer.info/bin/civil.php';

  Future<Meteo> fetchData(final double lat, final double long) async {
    final url = Uri.parse(apiUrl).replace(queryParameters: {
      'lon': long,
      'lat': lat,
      'tzshift': 0, // timezone shift
      'unit': 'metric',
      'output': 'json',
    });

    debugPrint(url);

    http.Response data = await http.get(url);

    Meteo meteo = meteoFromJson(data.body);

    debugPrint(meteo.init);

    return meteo;
  }
}
