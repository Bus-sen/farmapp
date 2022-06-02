import 'package:carousel_slider/carousel_slider.dart';
import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:farmapp/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        leading: IconButton(
          icon: Icon(
            Icons.home,
            color: AppColors.colorBackground,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Komşu Pazar",
          style: TextStyle(color: AppColors.colorBackground),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: AppColors.colorBackground,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("favorites");
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              CustomWidgets.spacer,
              BigText(
                text: "Öne Çıkanlar",
                size: Dimensions.font26,
              ),
              CustomWidgets.spacer,
              _carouselWidget(),
            ],
          ),
        ],
      ),
    );
  }

  CarouselSlider _carouselWidget() {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        scrollDirection: Axis.vertical,
        onPageChanged: (index, reason) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
      items: Data.imagesList
          .map(
            (item) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                ),
                elevation: 6.0,
                shadowColor: AppColors.colorPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Center(
                        child: Text(
                          '${Data.titles[_currentIndex]}',
                          style: TextStyle(
                            fontSize: Dimensions.font26,
                            fontWeight: FontWeight.bold,
                            backgroundColor:
                                AppColors.colorPrimary.withOpacity(0.8),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
