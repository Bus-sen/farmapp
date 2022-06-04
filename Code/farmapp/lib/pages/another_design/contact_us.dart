import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:farmapp/widgets/custom_widgets.dart';
import 'package:farmapp/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/icon_text.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.colorPrimary),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              CustomWidgets.header,
              CustomWidgets.spacer,
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Lottie.network(
                    "https://assets5.lottiefiles.com/packages/lf20_in4cufsz.json"),
              ),
              Padding(
                padding: Dimensions.horizontalPadding,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.colorPrimary,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      BigText(
                        text: "GRUP 174",
                        color: Colors.white,
                        size: Dimensions.font26,
                      ),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(
                            text: "E-posta:",
                            color: Colors.white.withOpacity(0.9),
                            size: Dimensions.font20,
                          ),
                          BigText(
                            text: " grup174.oua@gmail.com",
                            color: Colors.white.withOpacity(0.9),
                            size: Dimensions.font20,
                          ),
                          SizedBox(
                            height: Dimensions.height20,
                          ),
                          SizedBox(
                            height: Dimensions.height20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Padding(
                padding: Dimensions.horizontalPadding,
                child: GestureDetector(
                  onTap: () async {
                    String text =
                        "Merhabalar, Komşu Pazar'da yer almak istiyorum!";
                    String uriText = Uri.encodeComponent(text);
                    String telephoneNumber = '905076576321';
                    String telephoneUrl = "https://wa.me/" + telephoneNumber;

                    var whatsappUrl = telephoneUrl + "?text=" + uriText;

                    try {
                      launch(whatsappUrl);
                    } catch (e) {
                      //To handle error and display error message
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      right: Dimensions.width20 * 2,
                      left: Dimensions.width20 * 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.whatsapp,
                          size: Dimensions.font26,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: Dimensions.width20,
                        ),
                        BigText(
                          text: "Whatsapp'tan Ulaşın",
                          color: Colors.white,
                          size: Dimensions.font20,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.colorPrimary,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 5.0,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
