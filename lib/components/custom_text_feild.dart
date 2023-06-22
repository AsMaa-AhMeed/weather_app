import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({super.key, required this.onSubmitted});
  final void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
            border: _buildBorder(),
            enabledBorder: _buildBorder(),
            focusedBorder: _buildBorder(),
            labelText: 'Search',
            labelStyle: const TextStyle(color: Colors.orange),
            hintText: 'Enter City Name',
            contentPadding:
                const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            suffixIcon: const Icon(
              Icons.search,
              color: Colors.orange,
            )),
      ),
    );
  }
}

OutlineInputBorder _buildBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.orange));
}
