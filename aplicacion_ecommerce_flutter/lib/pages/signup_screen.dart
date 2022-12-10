import 'package:ecommerce_app/pages/home_screen.dart';
import 'package:ecommerce_app/reusable_widgets/reusable_widget.dart';
import 'package:ecommerce_app/utils/color_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>{
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _usernameTextController = TextEditingController();
  TextEditingController _confirmPasswordTextController = TextEditingController();
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _lastNameTextController = TextEditingController();

  Widget build(BuildContext context){
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Registrarse",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("5E61F4"),
            hexStringToColor("9546C4"),
            Colors.black
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/NEKOSTORE PNG.png"),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Nombres", Icons.person, false,
                _nameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Apellidos", Icons.person, false,
                _lastNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Nombre de Usuario", Icons.person_outline, false, 
                _usernameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Correo Electrónico", Icons.email_outlined, false,
                _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Contraseña", Icons.lock_outline, true,
                _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Confirmar Contraseña", Icons.lock_outline, true,
                _confirmPasswordTextController),
                const SizedBox(
                  height: 20,
                ),
                signInSingUpButton(context, false, (){
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: _emailTextController.text,
                    password: _passwordTextController.text)
                    .then((value){
                      print("Cuenta creada exitosamente");
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                    })
              ],
            )
          ))),
        );
  }

}