import 'dart:io';
import 'dart:typed_data';


import 'package:http/http.dart' as http;

import 'dart:convert';
import 'package:http_parser/http_parser.dart';

import '../../core/utils/Constant.dart';
import '../../core/utils/responses.dart';



class ApiProvider {

  HttpClient client = new HttpClient();


  Future<dynamic> getCluster() async {
    Responses responseJson;
    try {
      var url = Uri.parse(loansApi);
      final response = await http.get(url);

      if (response.statusCode == 200) {
        responseJson = Responses(
            statusCode: '200',
            data: jsonDecode(response.body)['data'],
            message: jsonDecode(response.body)['message']);
      } else {
        responseJson = Responses(
            statusCode: response.statusCode.toString(),
            message: jsonDecode(response.body) );
      }
    } on SocketException {
      responseJson = Responses(
          message: "No Internet connection, try again",
          statusCode: "502",
          data: "502"
      );
    }
    return responseJson;
  }

}
