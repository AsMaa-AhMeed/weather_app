import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/components/components_export.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchViewBody extends StatelessWidget {
  SearchViewBody({
    super.key,
  });
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextFeild(
          onSubmitted: (value) async {
            cityName = value;
            WeatherService service = WeatherService();
            WeatherModel weather =
                await service.getWeather(cityName: cityName!);
            Provider.of<WeatherProvider>(context, listen: false).weatherData =
                weather;
            Provider.of<WeatherProvider>(context, listen: false).cityName =
                cityName;
            Navigator.pop(context);
          },
          onChanged: (value) {
            cityName = value;
          },
          onPressed: () async {
            WeatherService service = WeatherService();
            WeatherModel weather =
                await service.getWeather(cityName: cityName!);
            Provider.of<WeatherProvider>(context, listen: false).weatherData =
                weather;
            Provider.of<WeatherProvider>(context, listen: false).cityName =
                cityName;
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
