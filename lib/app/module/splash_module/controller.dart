import 'package:get/get.dart';


import '../../../routes/pages.dart';
import '../../core/p.dart';


class SplashController extends GetxController {
  /// Move from loader to splash after 5 seconds
  Future<void> delayedMove({int milli = 2000, String? to}) async {
    await Future.delayed(Duration(milliseconds: milli));

    P.cluster.getCluster();
  }



  @override
  void onInit() {
    super.onInit();

    delayedMove();
  }
}