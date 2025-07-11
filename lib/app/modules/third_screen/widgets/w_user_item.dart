import 'package:flutter/material.dart';
import '../models/users_model.dart';
import '../controllers/third_screen_controller.dart';

class WUserItem extends StatelessWidget {
  final Data user;
  final ThirdScreenController controller;

  const WUserItem({super.key, required this.user, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.selectUser(user),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                user.avatar ?? '',
                width: 49,
                height: 49,
                fit: BoxFit.cover,
                errorBuilder:
                    (context, error, stackTrace) => const CircleAvatar(
                      radius: 24.5,
                      child: Icon(Icons.person),
                    ),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const CircleAvatar(
                    radius: 24.5,
                    backgroundColor: Colors.grey,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  );
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.firstName} ${user.lastName}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user.email ?? '',
                    style: const TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
