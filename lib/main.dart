import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_provider.dart';

import 'views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        home: HomeView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
