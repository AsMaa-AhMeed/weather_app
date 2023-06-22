import 'package:flutter/material.dart';

import '../components/components_export.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Search a City"),
      ),
      body: SearchViewBody(),
    );
  }
}
