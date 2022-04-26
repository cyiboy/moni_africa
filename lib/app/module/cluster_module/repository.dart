
import '../../core/utils/responses.dart';
import '../../data/provider/api_service.dart';

class ClusterRepository {
  static ApiProvider _provider = ApiProvider();

  static Future<Responses> getCluster() async {
    final response = await _provider.getCluster();
    return  response;
  }





}

