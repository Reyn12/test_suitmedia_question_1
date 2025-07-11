import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/first_screen_controller.dart';
import '../widgets/w_profile_image.dart';
import '../widgets/w_input_field.dart';
import '../widgets/w_buttons.dart';

class FirstScreenView extends GetView<FirstScreenController> {
  const FirstScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          // Content
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Profile image placeholder
                      const ProfileImageWidget(),

                      const SizedBox(height: 51),

                      // Input fields
                      InputFieldWidget(
                        nameController: controller.nameController,
                        palindromeController: controller.palindromeController,
                      ),

                      const SizedBox(height: 45),

                      // Buttons
                      ButtonsWidget(
                        onCheckPressed: () => controller.checkPalindrome(),
                        onNextPressed: () => controller.goToNextScreen(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
