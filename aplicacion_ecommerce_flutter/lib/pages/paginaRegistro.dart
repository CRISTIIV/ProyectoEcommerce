import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
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
      children: <Widget>[
        botonGenerico(),
        logo(),
        botonGenerico(),
        botonGenerico(),
        fotoLogo(),
        botonGenerico(),
        botonGenerico(),
        botonGenerico(),
        campoNombre(),
        campoApellido(),
        campoUser(),
        campoPass(),
        campoPass2(),
        /*if (pass == pass2)
          botonRegistro()
        else
          Text("Las contraseñas no coinciden"),*/
        botonRegistro()
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

Widget campoNombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    child: TextField(
      decoration: InputDecoration(
          hintText: 'Nombres',
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

Widget campoApellido() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    child: TextField(
      decoration: InputDecoration(
          hintText: 'Apellidos',
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

Widget campoPass2() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Confirmar contraseña',
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

Widget campoUser() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    child: TextField(
      decoration: InputDecoration(
          hintText: 'Rut del usuario',
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

Widget botonRegistro() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
    child: MaterialButton(
      minWidth: 250.0,
      height: 100.0,
      onPressed: () {},
      color: Color.fromARGB(255, 133, 0, 241),
      child: Text("Registrar",
          style: TextStyle(color: Colors.white), textScaleFactor: 1.5),
    ),
  );
}

//Widget botonGenerico() {return Container(child: MaterialButton(minWidth: 1,height: 400,onPressed: () {},color: Color.fromARGB(255, 255, 0, 0)),);}

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

Widget fotoLogo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    child: Image.network(
        'https://raw.githubusercontent.com/CRISTIIV/ProyectoEcommerce/master/NEKOSTORE%20PNG.png'),
  );
}
