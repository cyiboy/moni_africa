import 'package:get/get.dart';
import 'package:moni_africa/app/module/cluster_module/controller.dart';
import '../module/splash_module/controller.dart';


class P {
  static initialize() {
    Get.put(SplashController());
    Get.put(ClusterController());
  }

  static SplashController get splash => Get.find();
  static ClusterController get cluster => Get.find();
}
