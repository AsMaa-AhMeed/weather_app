import 'package:flutter/material.dart';
import 'package:weather_app/components/components_export.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextFeild(),
      ],
    );
  }
}
