import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/components/home_view_body.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/views/views_export.dart';

import '../components/weather_data_body.dart';

class HomeView extends StatelessWidget {
  WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    weatherData = Provider.of<WeatherProvider>(context).weatherData;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchView(),
                    ));
              },
              icon: const Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      body: weatherData == null
          ? const HomeViewBody()
          : WeatherDataBody(
              weatherData: weatherData,
              cityName: Provider.of<WeatherProvider>(context).cityName!,
            ),
    );
  }
}
