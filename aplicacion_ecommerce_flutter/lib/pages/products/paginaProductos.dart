import 'package:aplicacion_ecommerce_flutter/pages/products/productPageBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
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
                        width: 45,
                        height: 45,
                        child: Icon(Icons.search, color: Colors.white),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        )),
                  ),
                ],
              )),
        ),
        ProductPageBody(),
      ],
    ));
  }
}
