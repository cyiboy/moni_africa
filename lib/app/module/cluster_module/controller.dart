import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../routes/pages.dart';
import '../../core/utils/responses.dart';
import '../../data/models/cluster.dart';
import 'repository.dart';

class ClusterController extends GetxController {
  Responses _responses = Responses();
  RxBool loading = false.obs;

  ClusterModel ?clusterModel;

  getCluster() async {
    loading.value = true;

    _responses = await ClusterRepository.getCluster();
    if (_responses.statusCode == '200') {
      loading.value = false;
      clusterModel = ClusterModel.fromMap(_responses.data) ;
      Get.offAllNamed( Routes.CLUSTER);
    } else {
      loading.value = false;
      Get.snackbar(_responses.message ?? 'Error', _responses.data ?? 'Error',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: Duration(seconds: 5));
    }
  }
}
