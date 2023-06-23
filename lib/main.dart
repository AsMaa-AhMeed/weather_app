import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_provider.dart';

import 'views/home_view.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => WeatherProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      theme: ThemeData(
          primarySwatch:
              Provider.of<WeatherProvider>(context).weatherData == null
                  ? Colors.blue
                  : Provider.of<WeatherProvider>(context)
                      .weatherData!
                      .getThemeColor()),
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
