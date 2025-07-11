import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/second_screen_controller.dart';

class WHeaderSection extends StatelessWidget {
  final SecondScreenController controller;

  const WHeaderSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Welcome text
        const Text(
          'Welcome',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),

        // User name from first screen
        Obx(
          () => Text(
            controller.userName.value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
