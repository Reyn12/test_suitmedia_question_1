import 'package:flutter/material.dart';
import '../controllers/third_screen_controller.dart';

class WEmptyState extends StatelessWidget {
  final ThirdScreenController controller;

  const WEmptyState({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.people_outline, size: 60, color: Colors.grey),
          const SizedBox(height: 16),
          const Text('Belum ada user', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: controller.fetchUsers,
            child: const Text('Refresh'),
          ),
        ],
      ),
    );
  }
}
