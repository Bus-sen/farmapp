import 'package:flutter/material.dart';

class Product {
  int id;
  String title, type, price, summary, timestamp, image;
  bool isAvailable;

  Product(
      {required this.id,
      required this.title,
      required this.type,
      required this.price,
      required this.summary,
      required this.timestamp,
      required this.image,
      required this.isAvailable});
}
