import 'package:farmapp/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CarouselCard extends StatelessWidget {
  String title;
  String image;
  String city;
  Color? color;

  CarouselCard(
      {Key? key,
      required this.title,
      required this.image,
      required this.city,
      color = AppColors.colorPrimary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
