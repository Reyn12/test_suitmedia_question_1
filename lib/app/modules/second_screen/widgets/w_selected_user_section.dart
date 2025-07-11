import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/second_screen_controller.dart';

class WSelectedUserSection extends StatelessWidget {
  final SecondScreenController controller;

  const WSelectedUserSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Obx(
          () => Text(
            controller.selectedUser.value,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
