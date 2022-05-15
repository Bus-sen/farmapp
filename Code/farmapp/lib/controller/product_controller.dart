import 'package:farmapp/data/repo/product_repo.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final ProductRepo productRepo;

  ProductController({required this.productRepo});

  List<dynamic> _productList = [];

//5:42 devam
  Future<void> getProductList() async {
    Response response = await productRepo.getProductList();
    if (response.statusCode == 200) {}
  }
}
