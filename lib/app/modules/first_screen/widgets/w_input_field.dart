import 'package:flutter/material.dart';
import '../../../core/widgets/input_widget.dart';

class InputFieldWidget extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController palindromeController;

  const InputFieldWidget({
    super.key,
    required this.nameController,
    required this.palindromeController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputWidget.name(controller: nameController),
        const SizedBox(height: 15),
        InputWidget.palindrome(controller: palindromeController),
      ],
    );
  }
}
