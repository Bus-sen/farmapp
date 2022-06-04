import 'package:farmapp/data/data.dart';
import 'package:farmapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import 'package:farmapp/utils/globals.dart' as globals;

import '../../data/seller.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_seller_row.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<Seller> sellerList = globals.favorites;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        title: Text(
          "Favori Tezgahlarım",
          style: TextStyle(color: AppColors.colorBackground),
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            child: Lottie.network(
                "https://assets6.lottiefiles.com/packages/lf20_sgn7zslb.json"),
          ),
          sellerList.length > 0 ? _listviewBuilder() : _message(),
        ],
      ),
    );
  }

  ListView _listviewBuilder() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: sellerList.length,
        itemBuilder: (context, index) {
          return new GestureDetector(
            onTap: () {
              globals.selectedSeller = sellerList[index];
              print("Şuna tıklandı: " + sellerList[index].title);
              Navigator.of(context).pushNamed('seller');
            },
            child: Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.height10),
              child: Row(children: [
                _thumbnail(index),
                Expanded(
                  child: Container(
                    height: Dimensions.listViewImgSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimensions.radius20),
                        bottomRight: Radius.circular(Dimensions.radius20),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: Dimensions.width10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(
                            text: sellerList[index].title,
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          SmallText(text: sellerList[index].summary),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          AppSellerRow(
                              location: sellerList[index].city,
                              type: sellerList[index].type)
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          );
        });
  }

  Container _thumbnail(int index) {
    return Container(
      height: Dimensions.listViewImgSize,
      width: Dimensions.listViewImgSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius20),
          bottomLeft: Radius.circular(Dimensions.radius20),
        ),
        color: Colors.white,
        image: DecorationImage(
            image: NetworkImage(Data.sellerList[index].image),
            fit: BoxFit.cover),
      ),
    );
  }
}

class _message extends StatelessWidget {
  const _message({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: BigText(
      text: "Henüz favori bir tezgahınız\nbulunmamaktadır.",
    ));
  }
}
