import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ecommerce',
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'NEKO STORE',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 0, 0),
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900),
            ),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
          body: Column(
            children: <Widget>[
              Container(
                child: Image.network(
                    'https://raw.githubusercontent.com/CRISTIIV/ProyectoEcommerce/master/PantallaINICIO%20PNG%20(modu).png'),
              ),
            ],
          ),
        ));
  }
}
