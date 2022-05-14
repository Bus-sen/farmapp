import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductPageBody extends StatefulWidget {
  const ProductPageBody({Key? key}) : super(key: key);

  @override
  State<ProductPageBody> createState() => _ProductPageBodyState();
}

class _ProductPageBodyState extends State<ProductPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: PageView.builder(
        //şimdilik 5 tane yukarıda item gösterelim

        itemCount: 5,

        //indeximiz position
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int position) {
    return Container(
      // TODO: bunları responsive tasarlayalım, 220 falan sıkıntı
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/images/karpuz.jpg")),

          //renkleri düzgün seçelim
          color: position.isEven
              ? Color.fromARGB(255, 174, 207, 136)
              : Color.fromARGB(255, 99, 129, 65)),
    );
  }
}
