import 'dart:core';

import 'package:farmapp/data/product.dart';
import 'package:farmapp/data/seller.dart';

class Data {
  static var cities = [
    'Antalya',
    'Ankara',
    'İstanbul',
    'Bursa',
    'Kars',
  ];

  static List productList = [
    Product(
        id: 1,
        title: "Karpuz",
        type: "Diyarbakır Karpuzu",
        price: "10 TL/kg",
        summary: "Taze taze sulu sulu",
        timestamp: "20.02.2022",
        isAvailable: true),
    Product(
        id: 2,
        title: "Kavun",
        type: "Diyarbakır Kavunu",
        price: "8 TL/kg",
        summary: "Taze taze sulu sulu",
        timestamp: "12.02.2022",
        isAvailable: true),
    Product(
        id: 3,
        title: "Biber",
        type: "Diyarbakır Biberi",
        price: "3 TL/kg",
        summary: "Taze taze sulu sulu",
        timestamp: "20.02.2022",
        isAvailable: true),
    Product(
        id: 4,
        title: "Elma",
        type: "Amasya Elması",
        price: "4 TL/kg",
        summary: "Taze taze sulu sulu",
        timestamp: "20.02.2022",
        isAvailable: true),
  ];

  static List sellerList = [
    Seller(
        id: 1,
        title: "Ayşe Teyze",
        city: "Serik",
        type: "Kadın Girişimci",
        phone: "052230303",
        products: [1, 3]),
    Seller(
        id: 2,
        title: "Hayriye Teyze",
        city: "Alanya",
        type: "Kadın Girişimci",
        phone: "052230222303",
        products: [2, 4]),
  ];
}
