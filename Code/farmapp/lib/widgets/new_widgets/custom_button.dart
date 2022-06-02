import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  final Color? color; //optional
  final String text;
  double size;
  TextOverflow overFlow;

  CustomButton(
      {Key? key,
      this.color = const Color(0xFF82A99F),
      required this.text,
      this.size = 15,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
