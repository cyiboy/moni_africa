import 'package:get/get.dart';

import '../app/module/cluster_module/cluster_screen.dart';


part './routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.CLUSTER, page: () =>  ClusterScreen()),
  ];
}
