import 'package:farmapp/utils/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:lottie/lottie.dart';
import '../../utils/dimensions.dart';
import '../../widgets/custom_widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.width30),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomWidgets.header,
                    Container(
                      child: Lottie.network(
                          "https://assets3.lottiefiles.com/private_files/lf30_4lyswkde.json"),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: Dimensions.height10 * 5,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('homepage');
                            },
                            child: Text(
                              "Şehir Seç",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font20),
                            ),
                            style: CustomWidgets.buttonStyle,
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Ürün mü eklemek istiyorsunuz? ',
                                  style: Dimensions.defaultStyle),
                              TextSpan(
                                  text: 'Bize ulaşın.',
                                  style: Dimensions.linkStyle,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      //bize ulaşın sayfası oluştur
                                      Navigator.of(context)
                                          .pushNamed('homepage');
                                    }),
                            ],
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
