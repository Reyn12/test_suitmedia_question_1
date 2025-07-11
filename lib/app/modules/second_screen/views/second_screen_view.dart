import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/second_screen_controller.dart';
import '../../../core/widgets/button_widget.dart';
import '../../../core/values/app_colors.dart';

class SecondScreenView extends GetView<SecondScreenController> {
  const SecondScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Screen',
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
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

            // Selected user name in Expanded to center it vertically
            Expanded(
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
            ),

            // Choose a User button at the bottom
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 20.0,
              ),
              child: ButtonWidget(
                text: 'Choose a User',
                backgroundColor: AppColors.primary,
                onPressed: () => controller.goToThirdScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
