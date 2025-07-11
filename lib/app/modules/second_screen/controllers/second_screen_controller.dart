import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SecondScreenController extends GetxController {
  // Variabel untuk nama user dari first screen
  final userName = ''.obs;

  // Variabel untuk nama user yang dipilih dari third screen
  final selectedUser = 'Selected User Name'.obs;

  @override
  void onInit() {
    super.onInit();
    // Ambil data dari arguments saat navigasi
    if (Get.arguments != null && Get.arguments['name'] != null) {
      userName.value = Get.arguments['name'];
    }
  }

  // Method untuk pergi ke third screen
  void goToThirdScreen() {
    Get.toNamed(Routes.THIRD_SCREEN);
  }

  // Method untuk update selected user dari third screen
  void updateSelectedUser(String name) {
    selectedUser.value = name;
  }
}
