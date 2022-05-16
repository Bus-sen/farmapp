import 'package:farmapp/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NormalText extends StatelessWidget {
  final Color? color; //optional
  final String text;
  double size;
  TextOverflow overFlow;
  double height;

  NormalText(
      {Key? key,
      // TODO: add hexadecimal main color for bigger texts and titles
      // to here, not to AppColors.
      this.color = const Color(0xFF82A99F),
      required this.text,
      this.height = 1.2,
      this.size = 15,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w500,
        color: color,
        // TODO: add font family to pubspec yaml of your choice
      ),
    );
  }
}
