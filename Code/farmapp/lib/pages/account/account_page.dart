import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/account_widget.dart';
import 'package:farmapp/widgets/app_icon.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //home_page'de, List pages'a AccountPage() eklenecek
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        title: BigText(
          text: "Profil",
          size: 24,
          color: Colors.white,
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
          children: [
            //profile icon
            AppIcon(
              icon: Icons.person,
              backgroundColor: AppColors.colorPrimary,
              iconColor: Colors.white //iconsize ve size yok (75ti)
              ,
            ),
            SizedBox(
              height: Dimensions.height20,
            ), //height30 yazıyordu
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //name
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.person,
                          backgroundColor: AppColors.colorPrimary,
                          iconColor: Colors.white //iconsize ve size yok (75ti)
                          ,
                        ),
                        bigText: BigText(text: "Kullanıcı")),
                    SizedBox(
                      height: Dimensions.height10,
                    ), //height20 yazıyordu
                    //surname
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.person,
                          backgroundColor: AppColors.colorPrimary,
                          iconColor: Colors.white //iconsize ve size yok (75ti)
                          ,
                        ),
                        bigText: BigText(text: "Kullanıcı")),
                    SizedBox(
                      height: Dimensions.height10,
                    ), //height20 yazıyordu
                    //email
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.email,
                          backgroundColor: AppColors.colorPrimary,
                          iconColor: Colors.white //iconsize ve size yok (75ti)
                          ,
                        ),
                        bigText: BigText(text: "info@farmapp.com")),
                    SizedBox(
                      height: Dimensions.height10,
                    ), //height20 yazıyordu
                    // phone
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.phone,
                          backgroundColor: AppColors.colorPrimary,
                          iconColor: Colors.white //iconsize ve size yok (75ti)
                          ,
                        ),
                        bigText: BigText(text: "1658796240")),
                    SizedBox(
                      height: Dimensions.height10,
                    ), //height20 yazıyordu
                    // address
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.location_on,
                          backgroundColor: AppColors.colorPrimary,
                          iconColor: Colors.white //iconsize ve size yok (75ti)
                          ,
                        ),
                        bigText: BigText(text: "Adres")),
                    SizedBox(
                      height: Dimensions.height10,
                    ), //height20 yazıyordu
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
