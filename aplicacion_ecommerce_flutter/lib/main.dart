import 'package:aplicacion_ecommerce_flutter/pages/paginaLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
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
        logo(),
        columnaBotones(),
        columnaBotones(),
        botonIngreso(),
        botonGenerico(),
        botonGenerico()
      ],
    )),
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

Widget botonIngreso() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
    child: MaterialButton(
      minWidth: 400.0,
      height: 179.0,
      onPressed: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()))
      },
      color: Color.fromARGB(255, 133, 0, 241),
      child: Text("Ir al login",
          style: TextStyle(color: Colors.white), textScaleFactor: 1.5),
    ),
  );
}

Widget botonGenerico() {
  return RawMaterialButton(onPressed: () {});
}

Widget columnaBotones() {
  return Column(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      botonGenerico(),
      botonGenerico(),
      botonGenerico(),
      botonGenerico(),
      botonGenerico(),
      botonGenerico(),
      botonGenerico(),
      botonGenerico()
    ],
  );
}
