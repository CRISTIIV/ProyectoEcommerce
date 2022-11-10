import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                    Text("Pais"),
                    Text("Ciudad"),
                  ]),
                  Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      )),
                ],
              )),
        ),
      ],
    ));
  }
}
