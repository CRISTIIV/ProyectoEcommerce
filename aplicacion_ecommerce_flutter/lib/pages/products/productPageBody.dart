import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductPageBody extends StatefulWidget {
  const ProductPageBody({super.key});

  @override
  ProductPageBodyState createState() => ProductPageBodyState();
}

class ProductPageBodyState extends State<ProductPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: ((context, position) {
          return _buildPageItem(position);
        }),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven ? Color(0XFF69c5df) : Color(0xFF9294cc),
          image: DecorationImage(
              image: AssetImage("assets/images/NEKOSTORE PNG.png"))),
    );
  }
}
