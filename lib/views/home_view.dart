import 'package:flutter/material.dart';
import 'package:weather_app/components/home_view_body.dart';
import 'package:weather_app/views/views_export.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
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
        body: HomeViewBody());
  }
}
