import 'package:aplicacion_ecommerce_flutter/pages/home_screen.dart';
import 'package:aplicacion_ecommerce_flutter/pages/paginaAdmin.dart';
import 'package:aplicacion_ecommerce_flutter/pages/signup_screen.dart';
import 'package:aplicacion_ecommerce_flutter/reusable_widgets/reusable_widget.dart';
import 'package:aplicacion_ecommerce_flutter/utils/color_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/NEKOSTORE PNG.png"),
                SizedBox(
                  height: 30,
                ),
                reusableTextField("Correo del usuario", Icons.person_outline,
                    false, _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Contraseña", Icons.lock_outline, true,
                    _passwordTextController),
                SizedBox(
                  height: 20,
                ),
                signInSingUpButton(context, true, () {
                  if (_emailTextController.text == "admin@admin.admin" &&
                      _passwordTextController.text == "admin123") {
                    _emailTextController.clear();
                    _passwordTextController.clear();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AdminPage())); //AdminPage()));
                  } else {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text)
                        .then((value) {
                      _emailTextController.clear();
                      _passwordTextController.clear();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  }
                  ;
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text("¿No tienes una cuenta? ",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Registrarse",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
