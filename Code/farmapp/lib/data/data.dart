import 'dart:core';

import 'package:farmapp/data/product.dart';
import 'package:farmapp/data/seller.dart';

class Data {
  static var regions = [
    'Akdeniz',
    'Ege',
    'Marmara',
    'Karadeniz',
    'İç Anadolu',
    'Doğu Anadolu',
    'Güneydoğu Anadolu',
  ];

  static List<Product> productList = [
    Product(
        id: 1,
        title: "Karpuz",
        type: "Diyarbakır Karpuzu",
        price: "10 TL/kg",
        summary: "Taze taze sulu sulu",
        timestamp: "20.02.2022",
        image: "",
        isAvailable: true),
    Product(
        id: 2,
        title: "Kavun",
        type: "Diyarbakır Kavunu",
        price: "8 TL/kg",
        summary: "Taze taze sulu sulu",
        timestamp: "12.02.2022",
        image: "",
        isAvailable: true),
    Product(
        id: 3,
        title: "Biber",
        type: "Diyarbakır Biberi",
        price: "3 TL/kg",
        summary: "Taze taze sulu sulu",
        image: "",
        timestamp: "20.02.2022",
        isAvailable: true),
    Product(
        id: 4,
        title: "Elma",
        type: "Amasya Elması",
        price: "4 TL/kg",
        summary: "Taze taze sulu sulu",
        image: "",
        timestamp: "20.02.2022",
        isAvailable: true),
  ];

  static List<Seller> sellerList = [
    Seller(
        id: 1,
        title: "Ayşe Teyze",
        city: "Serik",
        summary: "Bugün bunları satıyorum",
        type: "Kadın Girişimci",
        phone: "052230303",
        brochure: "http://www.africau.edu/images/default/sample.pdf",
        image:
            "https://cdn.pixabay.com/photo/2015/10/24/20/03/apples-1004886_960_720.jpg",
        products: [
          Product(
              id: 1,
              title: "Karpuz",
              type: "Diyarbakır Karpuzu",
              price: "10 TL/kg",
              summary: "Taze taze sulu sulu",
              timestamp: "20.02.2022",
              image:
                  "https://cdn.pixabay.com/photo/2015/06/19/16/48/watermelon-815072_640.jpg",
              isAvailable: true),
          Product(
              id: 2,
              title: "Kavun",
              type: "Diyarbakır Kavunu",
              price: "8 TL/kg",
              summary: "Taze taze sulu sulu",
              timestamp: "12.02.2022",
              image:
                  "https://cdn.pixabay.com/photo/2015/07/23/16/51/melon-857190_640.jpg",
              isAvailable: true),
          Product(
              id: 3,
              title: "Biber",
              type: "Diyarbakır Biberi",
              price: "3 TL/kg",
              summary: "Taze taze sulu sulu",
              image:
                  "https://cdn.pixabay.com/photo/2014/08/18/23/11/bell-peppers-421087_640.jpg",
              timestamp: "20.02.2022",
              isAvailable: false),
          Product(
              id: 2,
              title: "Kavun",
              type: "Diyarbakır Kavunu",
              price: "8 TL/kg",
              summary: "Taze taze sulu sulu",
              timestamp: "12.02.2022",
              image:
                  "https://cdn.pixabay.com/photo/2015/07/23/16/51/melon-857190_640.jpg",
              isAvailable: true),
          Product(
              id: 3,
              title: "Biber",
              type: "Diyarbakır Biberi",
              price: "3 TL/kg",
              summary: "Taze taze sulu sulu",
              image:
                  "https://cdn.pixabay.com/photo/2014/08/18/23/11/bell-peppers-421087_640.jpg",
              timestamp: "20.02.2022",
              isAvailable: false),
        ]),
    Seller(
        id: 2,
        title: "Hayriye Teyze",
        city: "Alanya",
        summary: "Antalya'da gün içi teslimat mümkündür.",
        type: "Kadın Girişimci",
        phone: "052230222303",
        image:
            'https://cdn.pixabay.com/photo/2016/07/11/19/40/eggs-1510449_960_720.jpg',
        brochure: "http://www.africau.edu/images/default/sample.pdf",
        products: [
          Product(
              id: 3,
              title: "Biber",
              type: "Diyarbakır Biberi",
              price: "3 TL/kg",
              summary: "Taze taze sulu sulu",
              image:
                  "https://cdn.pixabay.com/photo/2014/08/18/23/11/bell-peppers-421087_640.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
        ]),
  ];

  static final List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2016/08/28/23/24/sunflower-1627193_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/09/21/04/46/barley-field-1684052_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/10/24/20/03/apples-1004886_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/07/11/19/40/eggs-1510449_960_720.jpg',
  ];
  static final List<String> titles = [
    ' Ayşe Hanım Tezgahı ',
    ' Hayriye Hanımın Çiftliği ',
    ' Ucuzluk Pazarı ',
    ' Yumurtacı Halil ',
  ];
}
