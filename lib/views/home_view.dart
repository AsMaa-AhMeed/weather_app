import 'package:flutter/material.dart';
import 'package:weather_app/components/home_view_body.dart';
import 'package:weather_app/views/views_export.dart';

class HomeView extends StatelessWidget {
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
                      builder: (context) => SearchView(),
                    ));
              },
              icon: const Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Cairo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "Updated: 16:11 PM",
            style: TextStyle(fontSize: 18),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(40),
            leading: Image.asset("assets/images/cloudy.png"),
            title: Center(
                child: Text(
              "30",
              style: TextStyle(fontSize: 24),
            )),
            trailing: Column(children: [
              Text("max: 30"),
              Text("mix: 30"),
            ]),
          ),
          Text(
            "Clear",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 80)
        ],
      ),
    );
  }
}
