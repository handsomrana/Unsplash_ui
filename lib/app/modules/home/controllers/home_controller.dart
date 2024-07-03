import 'package:get/get.dart';
import 'package:unsplash_ui/app/modules/home/services/unsplash_api_services.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  UnsplashService response = UnsplashService();

  @override
  void onInit() async {
    await response.getPhotos();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
