import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        //    controller: nameController,
        decoration: InputDecoration(
            border: _buildBorder(),
            enabledBorder: _buildBorder(),
            focusedBorder: _buildBorder(),
            labelText: 'Search',
            labelStyle: const TextStyle(color: Colors.orange),
            hintText: 'Enter City Name',
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
