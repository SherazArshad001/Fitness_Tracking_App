import 'package:flutter/material.dart';

class HomeTextfield extends StatefulWidget {
  const HomeTextfield({super.key});

  @override
  HomeTextfieldState createState() => HomeTextfieldState();
}

class HomeTextfieldState extends State<HomeTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        labelText: 'Search Exercise',
        hintText: 'Search Exercise',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
