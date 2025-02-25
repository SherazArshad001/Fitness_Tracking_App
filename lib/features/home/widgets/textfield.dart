import 'package:flutter/material.dart';

class HomeTextfield extends StatefulWidget {
  const HomeTextfield({super.key});

  @override
  _HomeTextfieldState createState() => _HomeTextfieldState();
}

class _HomeTextfieldState extends State<HomeTextfield> {
  final FocusNode _textFieldFocusNode = FocusNode();

  @override
  void dispose() {
    _textFieldFocusNode.dispose(); // Dispose to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _textFieldFocusNode,
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
