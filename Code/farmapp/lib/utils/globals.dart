library my_prj.globals;

import 'package:farmapp/data/seller.dart';

import '../data/product.dart';

String city = "Antalya";
List<Seller> favorites = [];
Seller selectedSeller = Seller(
    id: 0,
    title: "",
    summary: "",
    city: "",
    region: "",
    type: "",
    phone: "",
    brochure: "",
    image: "",
    products: []);
String brochureId = "";
List productList = [];
Product selectedProduct = Product(
    id: 0,
    title: "",
    type: "",
    price: "",
    summary: "",
    timestamp: "",
    image: "",
    isAvailable: false);

String imageLink = "";
