import 'package:farmapp/pages/product/product_detail.dart';
import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TitleText extends StatelessWidget {
  final Color? color; //optional
  final String text;
  double size;
  TextOverflow overFlow;

  TitleText(
      {Key? key,
      // TODO: add hexadecimal main color for bigger texts and titles
      // to here, not to AppColors.

      this.color = const Color(0xFF0C4F4E),
      required this.text,
      this.size = 26,
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
          fontWeight: FontWeight.w600,
          // TODO: add font family to pubspec yaml of your choice
        ),
      ),
    );
  }
}
