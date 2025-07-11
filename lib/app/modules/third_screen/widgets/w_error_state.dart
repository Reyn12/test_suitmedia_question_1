import 'package:flutter/material.dart';
import '../controllers/third_screen_controller.dart';

class WErrorState extends StatelessWidget {
  final ThirdScreenController controller;

  const WErrorState({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 60, color: Colors.red),
          const SizedBox(height: 16),
          const Text('Gagal memuat data', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: controller.fetchUsers,
            child: const Text('Coba Lagi'),
          ),
        ],
      ),
    );
  }
}
