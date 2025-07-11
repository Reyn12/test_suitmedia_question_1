import 'package:get/get.dart';
import '../models/users_model.dart';
import '../services/users_services.dart';
import '../../second_screen/controllers/second_screen_controller.dart';

class ThirdScreenController extends GetxController {
  final RxList<Data> usersList = <Data>[].obs;
  final RxBool isLoading = false.obs;
  final RxBool isLoadingMore = false.obs;
  final RxBool hasReachedMax = false.obs;
  final RxBool hasError = false.obs;

  int currentPage = 1;
  int perPage = 10;
  int totalPages = 0;

  final SecondScreenController secondScreenController =
      Get.find<SecondScreenController>();

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  // Function to fetch data initially
  Future<void> fetchUsers() async {
    if (isLoading.value) return;

    isLoading.value = true;
    hasError.value = false;
    currentPage = 1;

    try {
      // Record start time of the request
      final startTime = DateTime.now();

      final result = await UserServices.getUsers(
        page: currentPage,
        perPage: perPage,
      );

      // Calculate how long the request has been running
      final requestDuration = DateTime.now().difference(startTime);

      // If request is faster than 1 second, add delay
      if (requestDuration.inMilliseconds < 1000) {
        await Future.delayed(
          Duration(milliseconds: 1000 - requestDuration.inMilliseconds),
        );
      }

      if (result != null && result.data != null) {
        usersList.value = result.data!;
        totalPages = result.totalPages ?? 0;
        hasReachedMax.value = currentPage >= totalPages;
      } else {
        hasError.value = true;
      }
    } catch (e) {
      hasError.value = true;
      print('Error: $e');
    } finally {
      isLoading.value = false;
    }
  }

  // Function for pull-to-refresh
  Future<void> onRefresh() async {
    await fetchUsers();
  }

  // Function for loading more data (infinite scroll)
  Future<void> loadMoreUsers() async {
    if (isLoadingMore.value || hasReachedMax.value || isLoading.value) return;

    isLoadingMore.value = true;

    try {
      // Record start time of the request
      final startTime = DateTime.now();

      currentPage++;
      final result = await UserServices.getUsers(
        page: currentPage,
        perPage: perPage,
      );

      // Calculate how long the request has been running
      final requestDuration = DateTime.now().difference(startTime);

      // If request is faster than 1 second, add delay
      if (requestDuration.inMilliseconds < 1000) {
        await Future.delayed(
          Duration(milliseconds: 1000 - requestDuration.inMilliseconds),
        );
      }

      if (result != null && result.data != null && result.data!.isNotEmpty) {
        usersList.addAll(result.data!);
        hasReachedMax.value = currentPage >= (result.totalPages ?? 0);
      } else {
        currentPage--;
        hasReachedMax.value = true;
      }
    } catch (e) {
      currentPage--;
      print('Error loading more: $e');
    } finally {
      isLoadingMore.value = false;
    }
  }

  // Function to select a user and return to the previous screen
  void selectUser(Data user) {
    if (user.firstName != null && user.lastName != null) {
      secondScreenController.selectedUser.value =
          '${user.firstName} ${user.lastName}';
      Get.back();
    }
  }
}
