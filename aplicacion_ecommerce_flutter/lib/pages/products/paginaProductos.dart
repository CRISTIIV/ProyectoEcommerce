import 'package:aplicacion_ecommerce_flutter/pages/products/productPageBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class PaginaProductos extends StatefulWidget {
  const PaginaProductos({super.key});

  @override
  PaginaProductosState createState() => PaginaProductosState();
}

class PaginaProductosState extends State<PaginaProductos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    BigText(text: "Pais", size: 25),
                    Row(
                      children: [
                        SmallText(text: "Ciudad"),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ]),
                  Center(
                    child: Container(
                        width: Dimensions.width45,
                        height: Dimensions.height45,
                        child: Icon(Icons.search,
                            color: Colors.white, size: Dimensions.iconSize24),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius15),
                          color: Colors.blue,
                        )),
                  ),
                ],
              )),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: ProductPageBody(),
        )),
      ],
    ));
  }
}
