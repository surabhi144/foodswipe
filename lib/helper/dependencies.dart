import 'package:foodswipe/controllers/popular_product_controller.dart';
import 'package:foodswipe/data/api/api_client.dart';
import 'package:foodswipe/data/repository/popular_product_repo.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api clients
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www/dbestech.com"));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
