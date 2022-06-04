import 'package:farmapp/data/product.dart';
import 'package:flutter/material.dart';

class Seller {
  int id;
  String title, summary, city, region, type, phone, image, brochure;
  List<Product> products;

  Seller(
      {required this.id,
      required this.title,
      required this.summary,
      required this.city,
      required this.region,
      required this.type,
      required this.phone,
      required this.image,
      required this.brochure,
      required this.products});
}
