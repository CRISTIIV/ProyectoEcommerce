import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class paginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ecommerce',
        home: Scaffold(
          body: Column(
            children: <Widget>[
              cuerpo(),
            ],
          ),
        ));
  }
}
