import 'package:farmapp/data/product.dart';
import 'package:flutter/material.dart';

class Seller {
  int id;
  String title, city, type, phone;
  List products;

  Seller(
      {required this.id,
      required this.title,
      required this.city,
      required this.type,
      required this.phone,
      required this.products});
}
