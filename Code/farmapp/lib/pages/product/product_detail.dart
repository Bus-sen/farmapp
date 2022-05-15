import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/app_icon.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:farmapp/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/app_column.dart';
import '../../widgets/app_row.dart';
import '../../widgets/icon_text.dart';
import '../../widgets/normal_text.dart';
import '../../widgets/small_text.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 100,
            foregroundColor: AppColors.colorPrimary,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppIcon(icon: Icons.favorite_border_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height10, bottom: Dimensions.height10),
                child: Center(
                  child: Column(
                    children: [
                      BigText(size: Dimensions.font26, text: "Karpuz"),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(Icons.star,
                                    size: Dimensions.iconSize20 / 2,
                                    color: AppColors.colorPrimary)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SmallText(text: "4.9"),
                          SizedBox(
                            width: Dimensions.width10 * 4,
                          ),
                          SmallText(text: "122"),
                          SizedBox(
                            width: Dimensions.width10 / 2,
                          ),
                          SmallText(text: "yorum")
                        ],
                      ),
                      SizedBox(
                        height: Dimensions.height10 / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NormalText(text: "Kilogram Fiyatı: "),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          BigText(text: "24 TL")
                        ],
                      ),
                    ],
                  ),
                ),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.colorPrimary,
            expandedHeight: Dimensions.screenHeight / 3,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/karpuz.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  top: Dimensions.width30),
              child: TextWidget(
                size: Dimensions.font20 * 0.8,
                text: "Vücudun nem dengesini korumaya yardımcı olan karpuz kendinizi zinde hissetmenize yardımcı olur. \n\nYaz aylarında ara öğünlerde sade veya yanında yoğurt, peynir grubuyla beraber tüketmek sofralarınızı canlandırır.Diğer meyvelerle blenderdan geçirilip soğuk içecekler hazırlanabilir. Dondurularak da dondurma şeklinde tüketmek lezzetli bir alternatif olacaktır." +
                    "Vücudun nem dengesini korumaya yardımcı olan  karpuz kendinizi zinde hissetmenize yardımcı olur.\n\nYaz aylarında ara öğünlerde sade veya yanında yoğurt, peynir grubuyla beraber tüketmek sofralarınızı canlandırır.Diğer meyvelerle blenderdan geçirilip soğuk içecekler hazırlanabilir. Dondurularak da dondurma şeklinde tüketmek lezzetli bir alternatif olacaktır." +
                    "Vücudun nem dengesini korumaya yardımcı olan karpuz kendinizi zinde hissetmenize yardımcı olur.\n\nYaz aylarında ara öğünlerde sade veya yanında yoğurt, peynir grubuyla beraber tüketmek sofralarınızı canlandırır.Diğer meyvelerle blenderdan geçirilip soğuk içecekler hazırlanabilir. Dondurularak da dondurma şeklinde tüketmek lezzetli bir alternatif olacaktır"
                        "Vücudun nem dengesini korumaya yardımcı olan karpuz kendinizi zinde hissetmenize yardımcı olur.Yaz aylarında ara öğünlerde sade veya yanında yoğurt, peynir grubuyla beraber tüketmek sofralarınızı canlandırır.Diğer meyvelerle blenderdan geçirilip soğuk içecekler hazırlanabilir. Dondurularak da dondurma şeklinde tüketmek lezzetli bir alternatif olacaktır." +
                    "Vücudun nem dengesini korumaya yardımcı olan karpuz kendinizi zinde hissetmenize yardımcı olur.\n\nYaz aylarında ara öğünlerde sade veya yanında yoğurt, peynir grubuyla beraber tüketmek sofralarınızı canlandırır.Diğer meyvelerle blenderdan geçirilip soğuk içecekler hazırlanabilir. Dondurularak da dondurma şeklinde tüketmek lezzetli bir alternatif olacaktır." +
                    "Vücudun nem dengesini korumaya yardımcı olan karpuz kendinizi zinde hissetmenize yardımcı olur.\n\nYaz aylarında ara öğünlerde sade veya yanında yoğurt, peynir grubuyla beraber tüketmek sofralarınızı canlandırır.Diğer meyvelerle blenderdan geçirilip soğuk içecekler hazırlanabilir. Dondurularak da dondurma şeklinde tüketmek lezzetli bir alternatif olacaktır." +
                    "Vücudun nem dengesini korumaya yardımcı olan karpuz kendinizi zinde hissetmenize yardımcı olur.\n\nYaz aylarında ara öğünlerde sade veya yanında yoğurt, peynir grubuyla beraber tüketmek sofralarınızı canlandırır.Diğer meyvelerle blenderdan geçirilip soğuk içecekler hazırlanabilir. Dondurularak da dondurma şeklinde tüketmek lezzetli bir alternatif olacaktır.",
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height10,
              bottom: Dimensions.height10,
              right: Dimensions.width20 * 2,
              left: Dimensions.width20 * 2,
            ),
            child: IconTextWidget(
              icon: Icons.whatsapp,
              text: "Whatsapp",
              iconColor: AppColors.colorPrimary,
              size: Dimensions.iconSize20 * 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white.withOpacity(0.9),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height10,
              bottom: Dimensions.height10,
              right: Dimensions.width20 * 2,
              left: Dimensions.width20 * 2,
            ),
            child: IconTextWidget(
              icon: Icons.location_pin,
              text: "Serik",
              iconColor: AppColors.colorPrimary,
              size: Dimensions.iconSize20 * 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white.withOpacity(0.9),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
        ]),
        SizedBox(
          height: Dimensions.height15,
        ),
      ]),
    );
  }
}
