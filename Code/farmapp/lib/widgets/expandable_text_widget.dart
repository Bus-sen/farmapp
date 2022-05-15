import 'package:farmapp/utils/colors.dart';
import 'package:farmapp/utils/dimensions.dart';
import 'package:farmapp/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstPart;
  late String secondPart;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 6;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstPart = widget.text.substring(0, textHeight.toInt());
      secondPart =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstPart = widget.text;
      secondPart = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondPart.isEmpty
          ? SmallText(text: firstPart)
          : Column(
              children: [
                SmallText(
                    text: hiddenText
                        ? (firstPart + "...")
                        : (firstPart + secondPart)),
                SizedBox(height: Dimensions.height10),
                InkWell(
                  onTap: () {},
                  child: Row(children: [
                    SmallText(
                      text: "Daha fazla göster",
                      color: AppColors.colorPrimary,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.colorPrimary,
                    )
                  ]),
                )
              ],
            ),
    );
  }
}
