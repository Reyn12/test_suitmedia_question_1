import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/third_screen_controller.dart';
import '../widgets/w_empty_state.dart';
import '../widgets/w_error_state.dart';
import '../widgets/w_skeleton_loading.dart';
import '../widgets/w_user_list.dart';

class ThirdScreenView extends GetView<ThirdScreenController> {
  const ThirdScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Third Screen',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset('assets/icons/ic_back.png', width: 48, height: 48),
          onPressed: () => Get.back(),
        ),
      ),
      body: Obx(
        () =>
            controller.isLoading.value && controller.usersList.isEmpty
                ? const WSkeletonLoading()
                : controller.hasError.value && controller.usersList.isEmpty
                ? WErrorState(controller: controller)
                : controller.usersList.isEmpty
                ? WEmptyState(controller: controller)
                : WUserList(controller: controller),
      ),
    );
  }
}
