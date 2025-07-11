import 'package:flutter/material.dart';
import '../controllers/third_screen_controller.dart';
import 'w_user_item.dart';
import 'w_skeleton_item.dart';

class WUserList extends StatelessWidget {
  final ThirdScreenController controller;

  const WUserList({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: controller.onRefresh,
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          if (scrollInfo is ScrollEndNotification &&
              scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent &&
              !controller.isLoadingMore.value &&
              !controller.hasReachedMax.value) {
            controller.loadMoreUsers();
            return true;
          }
          return false;
        },
        child: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount:
              controller.usersList.length +
              (controller.isLoadingMore.value ? 1 : 0),
          separatorBuilder: (context, index) => const Divider(height: 1),
          itemBuilder: (context, index) {
            if (index == controller.usersList.length) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Center(child: WSkeletonItem()),
              );
            }

            final user = controller.usersList[index];
            return WUserItem(user: user, controller: controller);
          },
        ),
      ),
    );
  }
}
