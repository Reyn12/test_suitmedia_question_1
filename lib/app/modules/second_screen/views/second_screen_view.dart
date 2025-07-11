import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/second_screen_controller.dart';
import '../widgets/w_header_section.dart';
import '../widgets/w_selected_user_section.dart';
import '../widgets/w_choose_user_button.dart';

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
        padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header section with welcome text and username
            WHeaderSection(controller: controller),

            // Selected user section in the middle
            WSelectedUserSection(controller: controller),

            // Choose a user button at the bottom
            WChooseUserButton(controller: controller),
          ],
        ),
      ),
    );
  }
}
