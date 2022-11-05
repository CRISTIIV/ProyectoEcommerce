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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child: Image.network('https://raw.githubusercontent.com/CRISTIIV/ProyectoEcommerce/master/Fondo%20MAX.png', fit: BoxFit.cover),
            ),
          ],
        ),
    ));
  }
}
