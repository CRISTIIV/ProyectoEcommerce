import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        campoUser(),
        campoPass(),
        botonRegistro(),
        botonIngreso()
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

Widget campoUser() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    child: TextField(
      decoration: InputDecoration(
          hintText: 'Usuario',
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white))),
    ),
  );
}

Widget campoPass() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white))),
    ),
  );
}

Widget botonIngreso() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
    child: MaterialButton(
      minWidth: 220.0,
      height: 57.0,
      onPressed: () {},
      color: Color.fromARGB(255, 133, 0, 241),
      child: Text("Ingresar", style: TextStyle(color: Colors.white)),
    ),
  );
}

//Widget botonGenerico() {return Container(child: MaterialButton(minWidth: 1,height: 400,onPressed: () {},color: Color.fromARGB(255, 255, 0, 0)),);}

Widget botonRegistro() {
  return CupertinoButton(
      child: Text("Si no estás registrado, haz click aquí."),
      onPressed: () => {print("Registro")});
}

//Widget boton() {return ElevatedButton(onPressed: () {}, child: Text("Hola"));}

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
