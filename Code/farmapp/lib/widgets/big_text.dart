import 'package:farmapp/pages/product/product_detail.dart';
import 'package:farmapp/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BigText extends StatelessWidget {
  final Color? color; //optional
  final String text;
  double size;
  TextOverflow overFlow;

  BigText(
      {Key? key,
      // TODO: add hexadecimal main color for bigger texts and titles
      // to here, not to AppColors.
      this.color = const Color(0xFF82A99F),
      required this.text,
      this.size = 18,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        text,
        overflow: overFlow,
        style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: FontWeight.w500,
          // TODO: add font family to pubspec yaml of your choice
        ),
      ),
    );
  }
}

/*

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetail()),
        );
      },
      child: Text(
        text,
        overflow: overFlow,
        style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: FontWeight.w400,
          // TODO: add font family to pubspec yaml of your choice
        ),
      ),
    );
*/