import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/dimensions.dart';
import 'big_text.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final Color? color;
  final bool isConfirmed;
  const ListTileWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.isConfirmed = true,
    this.icon = const Icon(
      Icons.check_circle,
      color: Colors.green,
    ),
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            color: color),
        child: ListTile(
          onTap: () {
            if (isConfirmed) {
              Navigator.of(context).pushNamed("see_contract");
            } else {
              Navigator.of(context).pushNamed("confirm_contract");
            }
          },
          title: BigText(
            text: title,
            color: Colors.lightBlue,
          ),
          subtitle: Text(subtitle),
          leading: Icon(Icons.document_scanner),
          trailing: icon,
        ),
      ),
    );
  }
}
