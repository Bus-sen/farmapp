import 'package:get/get.dart';

// 5:18

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(String uri) async {
    try {
      //get request:
      Response response = await get(uri);
      return response;
    } catch (e) {
      //problem varsa error mesajı döndürüyoruz
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
