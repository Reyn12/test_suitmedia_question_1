import 'package:flutter/material.dart';
import 'w_skeleton_item.dart';

class WSkeletonLoading extends StatelessWidget {
  const WSkeletonLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: 6, // Menampilkan 6 skeleton item
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemBuilder:
          (context, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: WSkeletonItem(),
          ),
    );
  }
}
