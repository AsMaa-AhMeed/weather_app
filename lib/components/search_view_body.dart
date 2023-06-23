import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/components/components_export.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';

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
            BlocProvider.of<WeatherCubit>(context)
                .getWeather(cityName: cityName!);

            BlocProvider.of<WeatherCubit>(context).cityName = cityName;
            Navigator.pop(context);
          },
          onChanged: (value) {
            cityName = value;
          },
          onPressed: () async {
            BlocProvider.of<WeatherCubit>(context)
                .getWeather(cityName: cityName!);

            BlocProvider.of<WeatherCubit>(context).cityName = cityName;
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
