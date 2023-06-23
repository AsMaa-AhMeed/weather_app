import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/components/home_view_body.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/views/views_export.dart';

import '../components/weather_data_body.dart';

class HomeView extends StatelessWidget {
  WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
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
                        builder: (context) => const SearchView(),
                      ));
                },
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ))
          ],
        ),
        body: BlocBuilder<WeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is WeatherLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is WeatherSuccess) {
              return WeatherDataBody(
                weatherData: state.weatherModel,
                cityName: BlocProvider.of<WeatherCubit>(context).cityName!,
              );
            } else if (state is WeatherFailure) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "There is some thing went wrong , please try again",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            } else {
              return const HomeViewBody();
            }
          },
        ));
  }
}
