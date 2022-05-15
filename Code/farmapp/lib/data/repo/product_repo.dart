import 'package:farmapp/data/api/api_client.dart';
import 'package:get/get.dart';

class ProductRepo extends GetxService {
  final ApiClient apiClient;
  ProductRepo({required this.apiClient});

  Future<Response> getProductList() async {
    try {
      //TODO: url doldurmamız lazım
      Response response = await apiClient.get("");
      return response;
    } catch (e) {
      return Response();
    }
  }
}
