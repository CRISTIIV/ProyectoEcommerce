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
                'https://p4.wallpaperbetter.com/wallpaper/234/931/827/texture-minimalism-wallpaper-preview.jpg'),
            fit: BoxFit.cover)),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[logo(), campoUser(), campoPass(), FilaBotones()],
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
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
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
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
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
      minWidth: 200.0,
      height: 42.0,
      onPressed: () {},
      color: Color.fromARGB(255, 133, 0, 241),
      child: Text("Ingresar", style: TextStyle(color: Colors.white)),
    ),
  );
}

Widget botonRegistro() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
    child: MaterialButton(
      minWidth: 200.0,
      height: 42.0,
      onPressed: () {},
      color: Color.fromARGB(106, 140, 74, 195),
      child: Text("Registrarse", style: TextStyle(color: Colors.white)),
    ),
  );
}

Widget FilaBotones() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      botonRegistro(),
      botonIngreso(),
    ],
  );
}
