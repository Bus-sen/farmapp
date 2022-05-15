import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  //final Color textColor;
  final double size;

  const IconTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor,
      //this.textColor = const Color(0xFFFFFFFF),
      this.size = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: size,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
          //color: textColor,
        ),
      ],
    );
  }
}
