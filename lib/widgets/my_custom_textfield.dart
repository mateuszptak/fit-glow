import 'package:flutter/material.dart';

class MyCustomTextField extends StatelessWidget {
  const MyCustomTextField({
    super.key,
    required this.labelText,
    this.maxLines,
    this.minLines,
    this.controller,
    this.keyboardType,
  });

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String labelText;
  final int? minLines;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      controller: controller,
      minLines: minLines,
      maxLines: maxLines,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        label: Text(labelText),
        alignLabelWithHint: true,
        labelStyle: const TextStyle(color: Colors.white),
        hintStyle: const TextStyle(color: Colors.white),
        fillColor: const Color.fromARGB(255, 17, 16, 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
