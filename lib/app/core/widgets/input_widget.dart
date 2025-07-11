import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const InputWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChanged,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 14.0,
          ),
        ),
      ),
    );
  }

  // Factory for create input Name
  static InputWidget name({
    required TextEditingController controller,
    Function(String)? onChanged,
    String? Function(String?)? validator,
  }) {
    return InputWidget(
      controller: controller,
      hintText: 'Name',
      keyboardType: TextInputType.name,
      onChanged: onChanged,
      validator: validator,
    );
  }

  // Factory for create input Palindrome
  static InputWidget palindrome({
    required TextEditingController controller,
    Function(String)? onChanged,
    String? Function(String?)? validator,
  }) {
    return InputWidget(
      controller: controller,
      hintText: 'Palindrome',
      keyboardType: TextInputType.text,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
