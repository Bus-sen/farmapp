import 'dart:core';

import 'package:farmapp/data/product.dart';
import 'package:farmapp/data/seller.dart';

class Data {
  static var availableCities = [
    "Antalya",
    "İzmir",
  ];

  static List<Seller> sellerList = [
    Seller(
        id: 1,
        title: "Ayşe Teyze",
        city: "Serik",
        region: "Antalya",
        summary: "Bugün bunları satıyorum",
        type: "Kadın Girişimci",
        phone: "05076576321",
        brochure: "http://www.africau.edu/images/default/sample.pdf",
        image:
            "https://cdn.pixabay.com/photo/2015/10/24/20/03/apples-1004886_960_720.jpg",
        products: [
          Product(
              id: 1,
              title: "Karpuz",
              type: "Ahlat Karpuzu",
              price: "10 TL/kg",
              summary: "Taze taze sulu sulu",
              timestamp: "20.02.2022",
              image:
                  "https://cdn.pixabay.com/photo/2015/06/19/16/48/watermelon-815072_640.jpg",
              isAvailable: true),
          Product(
              id: 2,
              title: "Kavun",
              type: "Topatan Kavunu",
              price: "8 TL/kg",
              summary: "Taze taze sulu sulu",
              timestamp: "12.02.2022",
              image:
                  "https://cdn.pixabay.com/photo/2015/07/23/16/51/melon-857190_640.jpg",
              isAvailable: true),
          Product(
              id: 3,
              title: "Biber",
              type: "Sarı Biber",
              price: "3 TL/kg",
              summary: "Taze taze sulu sulu",
              image:
                  "https://cdn.pixabay.com/photo/2014/08/18/23/11/bell-peppers-421087_640.jpg",
              timestamp: "20.02.2022",
              isAvailable: false),
          Product(
              id: 2,
              title: "Kavun",
              type: "Top Kavunu",
              price: "8 TL/kg",
              summary: "Taze taze sulu sulu",
              timestamp: "12.02.2022",
              image:
                  "https://cdn.pixabay.com/photo/2015/07/23/16/51/melon-857190_640.jpg",
              isAvailable: true),
          Product(
              id: 3,
              title: "Biber",
              type: "Kapya Biberi",
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
        region: "Antalya",
        type: "Kadın Girişimci",
        phone: "05076576321",
        image:
            'https://cdn.pixabay.com/photo/2016/07/11/19/40/eggs-1510449_960_720.jpg',
        brochure: "http://www.africau.edu/images/default/sample.pdf",
        products: [
          Product(
              id: 3,
              title: "Biber",
              type: "Kapya Biber",
              price: "3 TL/kg",
              summary: "Taze taze sulu sulu",
              image:
                  "https://cdn.pixabay.com/photo/2014/08/18/23/11/bell-peppers-421087_640.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
        ]),
    Seller(
        id: 3,
        title: "Nurcan Hanım",
        city: "Elmalı",
        summary: "Dalından sofranıza.",
        region: "Antalya",
        type: "Kadın Girişimci",
        phone: "05076576321",
        image:
            'https://cdn.pixabay.com/photo/2016/01/02/02/03/orange-1117645_960_720.jpg',
        brochure: "http://www.africau.edu/images/default/sample.pdf",
        products: [
          Product(
              id: 5,
              title: "Portakal",
              type: "Washington",
              price: "6 TL/kg",
              summary: "Taze taze sulu sulu",
              image:
                  "https://cdn.pixabay.com/photo/2017/01/20/15/06/oranges-1995056_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
          Product(
              id: 6,
              title: "Limon",
              type: "Kıbrıs Limonu",
              price: "5 TL/kg",
              summary: "Taze taze sulu sulu",
              image:
                  "https://cdn.pixabay.com/photo/2016/01/02/01/49/lemon-1117568_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
          Product(
              id: 7,
              title: "Mandalina",
              type: "Klemantin",
              price: "5 TL/kg",
              summary: "Taze taze sulu sulu",
              image:
                  "https://cdn.pixabay.com/photo/2016/10/07/14/11/tangerines-1721633_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
        ]),
    Seller(
        id: 4,
        title: "Mehmet Amca",
        city: "Gündoğmuş",
        region: "Antalya",
        summary: "Doğal, taze ürünler.",
        type: "Yerli Girişimci",
        phone: "05076576321",
        image:
            'https://cdn.pixabay.com/photo/2020/05/24/15/19/flowers-quince-5214656_960_720.jpg',
        brochure: "http://www.africau.edu/images/default/sample.pdf",
        products: [
          Product(
              id: 8,
              title: "İncir",
              type: "Siyah Orak İnciri",
              price: "4 TL/kg",
              summary: "Taze taze sulu sulu",
              image:
                  "https://cdn.pixabay.com/photo/2020/05/26/22/28/figs-5224998_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
          Product(
              id: 9,
              title: "Ayva",
              type: "Ekmek Ayvası",
              price: "3 TL/kg",
              summary: "Taze taze sulu sulu",
              image:
                  "https://cdn.pixabay.com/photo/2012/11/07/17/34/quince-65189_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
          Product(
              id: 10,
              title: "Kiraz",
              type: "Turfanda Kirazı",
              price: "5 TL/kg",
              summary: "Taze taze sulu sulu",
              image:
                  "https://cdn.pixabay.com/photo/2017/07/30/13/35/cherry-2554364_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
        ]),
    Seller(
        id: 5,
        title: "Ali'nin Bahçesi",
        city: "Ayvalık",
        region: "İzmir",
        summary: "Günlük ve Taze",
        type: "Yerli Girişimci",
        phone: "05076576321",
        brochure: "http://www.africau.edu/images/default/sample.pdf",
        image:
            "https://cdn.pixabay.com/photo/2016/07/02/22/42/berries-1493905_960_720.jpg",
        products: [
          Product(
              id: 11,
              title: "Marul",
              type: " Manavgat Kıvırcığı",
              price: "3 TL/adet",
              summary: "Canlı ve taze",
              image:
                  "https://cdn.pixabay.com/photo/2018/06/17/14/45/salad-3480650_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
          Product(
              id: 12,
              title: "Domates",
              type: "Kumluca Domatesi",
              price: "4,5 TL/kg",
              summary: "Dalından taze",
              image:
                  "https://cdn.pixabay.com/photo/2018/07/06/08/49/tomatoes-3520004_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
          Product(
              id: 13,
              title: "Salatalık",
              type: "Çengelköy Salatalığı",
              price: "5 TL/kg",
              summary: "Taze ve sulu",
              image:
                  "https://cdn.pixabay.com/photo/2016/08/12/15/33/cucumbers-1588945_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
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
        id: 5,
        title: "Hüseyin'nin Tezgahı",
        city: "Buca",
        region: "İzmir",
        summary: "Ürettiğim gün bitiyor",
        type: "Pazarcı",
        phone: "05076576321",
        brochure: "http://www.africau.edu/images/default/sample.pdf",
        image:
            "https://cdn.pixabay.com/photo/2014/09/19/19/09/man-452904_960_720.jpg",
        products: [
          Product(
              id: 11,
              title: "Marul",
              type: " Manavgat Kıvırcığı",
              price: "3 TL/adet",
              summary: "Canlı ve taze",
              image:
                  "https://cdn.pixabay.com/photo/2018/06/17/14/45/salad-3480650_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
          Product(
              id: 12,
              title: "Domates",
              type: "Kumluca Domatesi",
              price: "4,5 TL/kg",
              summary: "Dalından taze",
              image:
                  "https://cdn.pixabay.com/photo/2018/07/06/08/49/tomatoes-3520004_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
          Product(
              id: 13,
              title: "Salatalık",
              type: "Çengelköy Salatalığı",
              price: "5 TL/kg",
              summary: "Taze ve sulu",
              image:
                  "https://cdn.pixabay.com/photo/2016/08/12/15/33/cucumbers-1588945_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
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
        id: 5,
        title: "Veli'nin Bahçesi",
        city: "Dikili",
        region: "İzmir",
        summary: "Dikili bir fidanım var",
        type: "Çiftçi",
        phone: "05076576321",
        brochure: "http://www.africau.edu/images/default/sample.pdf",
        image:
            "https://cdn.pixabay.com/photo/2018/02/12/09/00/the-market-3147758_960_720.jpg",
        products: [
          Product(
              id: 11,
              title: "Marul",
              type: " Manavgat Kıvırcığı",
              price: "3 TL/adet",
              summary: "Canlı ve taze",
              image:
                  "https://cdn.pixabay.com/photo/2018/06/17/14/45/salad-3480650_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
          Product(
              id: 12,
              title: "Domates",
              type: "Kumluca Domatesi",
              price: "4,5 TL/kg",
              summary: "Dalından taze",
              image:
                  "https://cdn.pixabay.com/photo/2018/07/06/08/49/tomatoes-3520004_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
          Product(
              id: 13,
              title: "Salatalık",
              type: "Çengelköy Salatalığı",
              price: "5 TL/kg",
              summary: "Taze ve sulu",
              image:
                  "https://cdn.pixabay.com/photo/2016/08/12/15/33/cucumbers-1588945_960_720.jpg",
              timestamp: "20.02.2022",
              isAvailable: true),
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
  ];

  static final List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2016/08/28/23/24/sunflower-1627193_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/09/21/04/46/barley-field-1684052_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/10/24/20/03/apples-1004886_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/07/11/19/40/eggs-1510449_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/01/02/01/15/orange-tree-1117420_960_720.jpg',
    'https://cdn.pixabay.com/photo/2011/03/16/16/13/tree-5378_960_720.jpg',
  ];
  static final List<String> titles = [
    ' Ayşe Hanım Tezgahı ',
    ' Hayriye Hanımın Çiftliği ',
    ' Ucuzluk Pazarı ',
    ' Yumurtacı Halil ',
    ' Nurcan Hanımın Bahçesi',
    ' Mehmet Amcanın Yeri',
    " Ali'nin Sebze & Meyve Tezgahı"
  ];
}
