import 'dart:io';

import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherDataBody extends StatelessWidget {
  const WeatherDataBody(
      {super.key, required this.weatherData, required this.cityName});
  final WeatherModel? weatherData;
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cityName,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          "Updated: ${weatherData!.date}",
          style: const TextStyle(fontSize: 18),
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(40),
          leading: Image.asset(weatherData!.getImage()),
          title: Center(
              child: Text(
            "${weatherData!.temp.toInt()}",
            style: const TextStyle(fontSize: 24),
          )),
          trailing: Column(children: [
            Text("minTemp: ${weatherData!.minTemp.toInt()}"),
            Text("maxTemp: ${weatherData!.maxTemp.toInt()}"),
          ]),
        ),
        Text(
          weatherData!.weatherStateName,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 80)
      ],
    );
  }
}