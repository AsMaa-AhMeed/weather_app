import 'package:flutter/material.dart';

import '../components/components_export.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key, required this.updateUi});
  final VoidCallback? updateUi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Search a City"),
        ),
        body: SearchViewBody(updateUi: updateUi,));
  }
}
