import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/loading_dialog.dart';
import '../../../core/values/app_colors.dart';
import '../models/user_model.dart';

class FirstScreenController extends GetxController {
  // Text controllers input fields
  late TextEditingController nameController;
  late TextEditingController palindromeController;

  // User data
  final Rx<UserModel?> user = Rx<UserModel?>(null);

  // Palindrome status
  final isPalindrome = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize controller
    nameController = TextEditingController();
    palindromeController = TextEditingController();
  }

  @override
  void onClose() {
    // Dispose controller when screen is closed
    nameController.dispose();
    palindromeController.dispose();
    super.onClose();
  }

  // Function check palindrome
  void checkPalindrome() {
    final text = palindromeController.text.toLowerCase().replaceAll(' ', '');

    if (text.isEmpty) {
      Get.snackbar(
        'Info',
        'Please enter text first',
        backgroundColor: AppColors.primary.withOpacity(0.8),
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    // Show loading
    LoadingDialog.show(message: 'Checking...');

    // Simulasi Loading
    Future.delayed(const Duration(seconds: 1), () {
      // Check palindrome (dibaca dari depan dan belakang sama)
      final reversedText = text.split('').reversed.join('');
      isPalindrome.value = (text == reversedText);

      // Close loading
      LoadingDialog.hide();

      // Show dialog result
      Get.dialog(
        AlertDialog(
          title: Text(isPalindrome.value ? 'isPalindrome' : 'notPalindrome'),
          content: Text(
            '${palindromeController.text} is ${isPalindrome.value ? 'Palindrome' : 'Not Palindrome'}',
          ),
          actions: [
            TextButton(onPressed: () => Get.back(), child: const Text('OK')),
          ],
        ),
      );
    });
  }

  // Function next screen
  void goToNextScreen() {
    if (nameController.text.isEmpty) {
      Get.snackbar(
        'Info',
        'Please enter your name first',
        backgroundColor: AppColors.primary.withOpacity(0.8),
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    // Save user data to model
    user.value = UserModel(name: nameController.text);

    // Navigate to second screen with user data
    Get.toNamed('/second', arguments: user.value!.toJson());
  }
}
