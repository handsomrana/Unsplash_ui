import 'package:get/get.dart';
import 'package:unsplash_ui/app/data/userdata.dart';
import 'package:unsplash_ui/app/modules/home/services/unsplash_api_services.dart';

class HomeController extends GetxController {
  UnsplashService response = UnsplashService();
  RxBool loaded = false.obs;

  @override
  void onInit() async {
    await response.getPhotos();
    super.onInit();
  }

  void onload() {
    if (usersData.isNotEmpty) {
      loaded.value = true;
    }
    return;
  }
}
