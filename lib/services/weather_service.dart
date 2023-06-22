import 'dart:convert';

import 'package:http/http.dart' as http;

import '../components/constants.dart';

class WeatherService {
  void getWeather({required String cityName}) async {
    Uri url =
        Uri.parse("$baseUrl/forecast.json?key=$kApiKey&q=$cityName&days=7");
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
  }
}
