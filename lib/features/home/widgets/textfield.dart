import 'package:flutter/material.dart';

class HomeTextfield extends StatelessWidget {
  const HomeTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Search Exercise',
        hintText: 'Search Exercise',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
