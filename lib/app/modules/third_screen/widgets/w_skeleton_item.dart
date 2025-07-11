import 'package:flutter/material.dart';

class WSkeletonItem extends StatelessWidget {
  const WSkeletonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Avatar skeleton
        Container(
          width: 49,
          height: 49,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name skeleton
              Container(
                width: double.infinity,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(height: 8),
              // Email skeleton
              Container(
                width: 150,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
