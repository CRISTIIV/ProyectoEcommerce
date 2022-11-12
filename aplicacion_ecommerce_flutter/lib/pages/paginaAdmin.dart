import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
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

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://raw.githubusercontent.com/CRISTIIV/ProyectoEcommerce/master/PantallaINICIO%20PNG%20(sin%20botones).png'),
            fit: BoxFit.cover)),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        botonGenerico(),
        botonGenerico(),
        logo(),
        botonGenerico(),
        botonGenerico(),
        stockAdminister(),
        userAdminister(),
      ],
    )),
  );
}

Widget stockAdminister() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13.5),
    child: MaterialButton(
      minWidth: 400.0,
      height: 100.0,
      onPressed: () {},
      color: Color.fromARGB(255, 133, 0, 241),
      child: Text("Administrar stock",
          style: TextStyle(color: Colors.white), textScaleFactor: 1.5),
    ),
  );
}

Widget userAdminister() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13.5),
    child: MaterialButton(
      minWidth: 400.0,
      height: 100.0,
      onPressed: () {},
      color: Color.fromARGB(255, 133, 0, 241),
      child: Text("Administrar usuarios",
          style: TextStyle(color: Colors.white), textScaleFactor: 1.5),
    ),
  );
}

Widget logo() {
  return Text("NEKO STORE",
      style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
          fontFamily: 'Pacifico'));
}

Widget botonGenerico() {
  return RawMaterialButton(onPressed: () {});
}
