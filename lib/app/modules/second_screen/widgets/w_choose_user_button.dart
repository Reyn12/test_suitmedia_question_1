import 'package:flutter/material.dart';
import '../controllers/second_screen_controller.dart';

class WChooseUserButton extends StatelessWidget {
  final SecondScreenController controller;

  const WChooseUserButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 32.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: controller.goToThirdScreen,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2B637B),
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text(
            'Choose a User',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
