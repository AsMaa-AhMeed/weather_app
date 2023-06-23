import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

import '../components/constants.dart';

class WeatherService {
  Future<WeatherModel?> getWeather({required String cityName}) async {
    WeatherModel? weatherRepo;
    try {
      Uri url =
          Uri.parse("$baseUrl/forecast.json?key=$kApiKey&q=$cityName&days=7");
      http.Response response = await http.get(url);
      Map<String, dynamic> data = jsonDecode(response.body);

      weatherRepo = WeatherModel.fromJson(data);
    } catch (e) {
      print(e);
    }
    return weatherRepo;
  }
}
