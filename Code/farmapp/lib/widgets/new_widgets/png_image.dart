import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PngImage extends StatelessWidget {
  final String path;
  final BoxFit? boxFit;

  const PngImage({Key? key, required this.path, this.boxFit = BoxFit.cover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      path,
      fit: boxFit,
      // errorbuilder eklenebilir
    );
  }
}
