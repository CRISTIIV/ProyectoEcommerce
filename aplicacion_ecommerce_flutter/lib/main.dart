import 'package:flutter/material.dart';

void main() => runApp(MiApp());


class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación base',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Barra de la aplicación'),
        ),
        body: Container(
          child: Image.network('https://raw.githubusercontent.com/CRISTIIV/ProyectoEcommerce/master/PantallaINICIO%20PNG%20(sin%20botones).png'),
      ),
    ));
  }
}
