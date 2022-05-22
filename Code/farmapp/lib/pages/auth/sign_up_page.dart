import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/app_text_field.dart';
import 'package:farmapp/widgets/big_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //home_page'de, List pages'a SignUpPage() eklenecek
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          SizedBox(
            height: Dimensions.screenHeight / 42,
          ), //height20 burada/değişebilir
          Container(
            height: Dimensions.screenHeight / 56, //height15
            child: Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                //radius: 20,
                backgroundImage:
                    AssetImage("assets/images/logo3.png" //değişebilir
                        ),
              ),
            ),
          ),
          //name
          AppTextField(
              textController: nameController,
              hintText: "Ad",
              icon: Icons.person),
          SizedBox(
            height: Dimensions.height20,
          ),
          //surname
          AppTextField(
              textController: nameController,
              hintText: "Soyad",
              icon: Icons.person),
          SizedBox(
            height: Dimensions.height20,
          ),
          //email
          AppTextField(
              textController: emailController,
              hintText: "Email",
              icon: Icons.email),
          SizedBox(
            height: Dimensions.height20,
          ),
          //phone
          AppTextField(
              textController: phoneController,
              hintText: "Telefon",
              icon: Icons.phone),
          SizedBox(
            height: Dimensions.height20,
          ),
          //password
          AppTextField(
              textController: passwordController,
              hintText: "Şifre",
              icon: Icons.password_sharp),
          SizedBox(
            height: Dimensions.height20,
          ),
          //kayıtOl butonu
          Container(
            width: Dimensions.screenWidth / 2,
            height: Dimensions.screenHeight / 13,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Dimensions.radius20,
                ), //radious30 idi
                color: AppColors.colorPrimary),
            child: Center(
              child: BigText(
                text: "Kayıt Ol",
                size: Dimensions.font20 + Dimensions.font20 / 2,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height10,
          ),
          RichText(
            text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                text: "Zaten bir hesabınız var mı?",
                style: TextStyle(
                    color: Colors.grey[500], fontSize: Dimensions.font20)),
          )
        ]),
      ),
    );
  }
}
