import 'package:aplicacion_ecommerce_flutter/pages/comprasUser.dart';
import 'package:aplicacion_ecommerce_flutter/pages/editProfileScreen.dart';
import 'package:aplicacion_ecommerce_flutter/pages/editStock.dart';
import 'package:aplicacion_ecommerce_flutter/pages/home_screen.dart';
import 'package:aplicacion_ecommerce_flutter/pages/paginaAdmin.dart';
import 'package:aplicacion_ecommerce_flutter/pages/paginaUser.dart';
import 'package:aplicacion_ecommerce_flutter/pages/searchUser.dart';
import 'package:aplicacion_ecommerce_flutter/pages/signin_screen.dart';
import 'package:aplicacion_ecommerce_flutter/pages/userModifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
  );
}

Image miniLogoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 150,
    height: 150,
  );
}

Row optionsBar2(context) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween);
}

Row optionsBar(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      ElevatedButton(
        child: Text("Configurar cuenta"),
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
        onPressed: () {
          FirebaseAuth.instance.signOut().then((value) {
            print("Ventana de configuración");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const UserPage())); //UserConfig()));
          });
        },
      ),
      Row(
        children: <Widget>[
          ElevatedButton(
            child: Text("Cerrar sesión"),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 43, 0, 255),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
            ),
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                print("Sesión cerrada");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInScreen()));
              });
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              //AÑADIR BUSCADOR DE PRODUCTOS CON FIREBASE
              print("Buscador de productos");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //SearchScreen()));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              //VER CARRITO DE COMPRAS
              print("Carrito de compras");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //CartScreen()));
            },
          ),
        ],
      ),
    ],
  );
}

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

//Botón simple con texto e icono
Container simpleButtonWithText(
    BuildContext context, String text, IconData icon, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
    child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.white;
              }
              return Color.fromARGB(255, 43, 0, 255);
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))))),
  );
}

Container signInSingUpButton(
    BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        isLogin ? 'Ingresar' : 'Registrarse',
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}

//Listview de categorías
Container categoriesList(context) {
  return Container(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        //Titulo de categorías
        Padding(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Text(
            "Categorías:",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        IconButton(
            icon: const Icon(
              Icons.woman,
              color: Colors.white,
            ),
            onPressed: () {
              print("Mujeres");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //WomenScreen()));
            }),
        IconButton(
            icon: const Icon(
              Icons.man,
              color: Colors.white,
            ),
            onPressed: () {
              print("Hombres");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //MenScreen()));
            }),
        IconButton(
            icon: const Icon(
              Icons.snowshoeing,
              color: Colors.white,
            ),
            onPressed: () {
              print("Calzado");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //ShoeScreen()));
            }),
        IconButton(
            icon: const Icon(
              Icons.pregnant_woman,
              color: Colors.white,
            ),
            onPressed: () {
              print("Bebés");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //BabyScreen()));
            }),
        IconButton(
            icon: const Icon(
              Icons.piano,
              color: Colors.white,
            ),
            onPressed: () {
              print("Instrumentos musicales");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //InstrumentScreen()));
            }),
        IconButton(
            icon: const Icon(
              Icons.movie,
              color: Colors.white,
            ),
            onPressed: () {
              print("Peliculas");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //MovieScreen()));
            }),
        IconButton(
            icon: const Icon(
              Icons.gamepad,
              color: Colors.white,
            ),
            onPressed: () {
              print("VideoJuegos");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //GameScreen()));
            }),
        IconButton(
            icon: const Icon(
              Icons.face,
              color: Colors.white,
            ),
            onPressed: () {
              print("Belleza");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //BeautyScreen()));
            }),
        IconButton(
            icon: const Icon(
              Icons.camera,
              color: Colors.white,
            ),
            onPressed: () {
              print("Cámaras");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //CameraScreen()));
            }),
        IconButton(
            icon: const Icon(
              Icons.book,
              color: Colors.white,
            ),
            onPressed: () {
              print("Libros");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //BookScreen()));
            }),
        IconButton(
            icon: const Icon(
              Icons.pets,
              color: Colors.white,
            ),
            onPressed: () {
              print("Mascotas");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SignInScreen())); //PetScreen()));
            })
      ],
    ),
  );
}

Container productsList() {
  return Container(
    height: 500,
    child: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        //Titulo de productos
        Padding(
          padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
          child: Text(
            "Productos Recomendados:",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //Producto 1
        Padding(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Row(
            children: <Widget>[
              //Imagen del producto
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image.asset(
                  'assets/images/Image Popular Product 2.png',
                  width: 100,
                  height: 100,
                ),
              ),
              //Nombre del producto
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "Short Nike",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Precio del producto
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "\$20.000",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Botón de agregar al carrito
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: IconButton(
                  icon: const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print("Agregar al carrito");
                  },
                ),
              ),
            ],
          ),
        ),
        //Producto 2
        Padding(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Row(
            children: <Widget>[
              //Imagen del producto
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image.asset(
                  'assets/images/ps4_console_white_1.png',
                  width: 100,
                  height: 100,
                ),
              ),
              //Nombre del producto
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "Dualshock 4",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Precio del producto
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "\$54.000",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Botón de agregar al carrito
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: IconButton(
                  icon: const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print("Agregar al carrito");
                  },
                ),
              ),
            ],
          ),
        ),
        //Producto 3
        Padding(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Row(
            children: <Widget>[
              //Imagen del producto
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image.asset(
                  'assets/images/glap.png',
                  width: 100,
                  height: 100,
                ),
              ),
              //Nombre del producto
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "Guantes Bici",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Precio del producto
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "\$14.000",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Botón de agregar al carrito
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: IconButton(
                  icon: const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print("Agregar al carrito");
                  },
                ),
              ),
            ],
          ),
        ),
        //Producto 4
        Padding(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Row(
            children: <Widget>[
              //Imagen del producto
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image.asset(
                  'assets/images/wireless headset.png',
                  width: 100,
                  height: 100,
                ),
              ),
              //Nombre del producto
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "Headset LOGI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Precio del producto
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "\$20.000",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Botón de agregar al carrito
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: IconButton(
                  icon: const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print("Agregar al carrito");
                  },
                ),
              ),
            ],
          ),
        ),
        //Producto 5
        Padding(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Row(
            children: <Widget>[
              //Imagen del producto
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image.asset(
                  'assets/images/NEKOSTORE PNG.png',
                  width: 100,
                  height: 100,
                ),
              ),
              //Nombre del producto
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "Caja Sorpresa",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Precio del producto
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "\$70.000",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Botón de agregar al carrito
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: IconButton(
                  icon: const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print("Agregar al carrito");
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

//Método para crear el menú de navegación
Drawer crearMenu(context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'Menú de navegación',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text('Todos los Productos'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInScreen()),
            );
          },
        ),
        ListTile(
          title: Text('Carrito'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInScreen()),
            );
          },
        ),
        ListTile(
          title: Text('Cerrar sesión'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInScreen()),
            );
          },
        ),
      ],
    ),
  );
}

//listview de las opciones del administrador
Container AdminOptions(context) {
  return Container(
    height: 500,
    child: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        simpleButtonWithText(context, "Editar Stock", Icons.add, () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditStock()),
          );
        }),
        simpleButtonWithText(context, "Administrar Usuarios", Icons.person_off,
            () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Usearch()),
          );
        }),
      ],
    ),
  );
}

Container UserOptions(context) {
  return Container(
    height: 500,
    child: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        simpleButtonWithText(context, "Editar Perfil", Icons.person, () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditProfile()),
          );
        }),
        simpleButtonWithText(context, "Mis Compras", Icons.shopify, () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Buy()),
          );
        }),
        simpleButtonWithText(context, "Carrito de Compras", Icons.shopping_cart,
            () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomeScreen()), //CartScreen()),
          );
        }),
      ],
    ),
  );
}

Container AdminUserVista(context, controller) {
  return Container(
    height: 500,
    child: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        reusableTextField("Email del usuario", Icons.person, false, controller),
        simpleButtonWithText(context, "Buscar", Icons.search, () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserModifier()),
          );
        }),
      ],
    ),
  );
}

Container AdminUserOptions(context) {
  return Container(
    height: 500,
    child: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        simpleButtonWithText(context, "Editar Perfil", Icons.person, () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditProfile()),
          );
        }),
        simpleButtonWithText(context, "Bloquear Usuario", Icons.block, () {
          print("Bloquear Usuario");
        }),
        simpleButtonWithText(context, "Compras del Usuario", Icons.shopify, () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Buy()),
          );
        }),
        simpleButtonWithText(context, "Carrito de Compras", Icons.shopping_cart,
            () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomeScreen()), //CartScreen()),
          );
        }),
      ],
    ),
  );
}

Container UserDataModifier(context, controller1, controller2) {
  return Container(
    height: 500,
    child: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        //Editar Perfil
        reusableTextField(
            "Editar nombre de usuario", Icons.person, false, controller1),
        SizedBox(height: 20.0),
        reusableTextField(
            "Cambiar password", Icons.password, true, controller2),
        SizedBox(height: 20.0),
        simpleButtonWithText(context, "Guardar cambios", Icons.save, () {
          print("Guardar cambios");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserPage()),
          );
        }),
      ],
    ),
  );
}

//listview del historial de compras
Container BuyHistory(context) {
  return Container(
      height: 500,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          //desplegar listado de compras
          simpleButtonWithText(context, "Compra 1", Icons.shopping_cart, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Buy()),
            );
          }),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Row(
              children: <Widget>[
                //Imagen del producto
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.asset(
                    'assets/images/NEKOSTORE PNG.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                //Nombre del producto
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                UserPage())); //ProductScreen()),
                  },
                  child: const Text(
                    " Caja Sorpresa",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                //Precio del producto
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    "\$70.000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ));
}

//Widget para aumentar y disminuir la cantidad de stock de un producto
Container StockModifier(context, controller1, controller2, controller3) {
  return Container(
    height: 500,
    child: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        //Editar Stock
        reusableTextField(
            "Id Producto", Icons.shopping_basket, false, controller3),
        SizedBox(height: 20.0),
        reusableTextField("Editar stock", Icons.add, false, controller1),
        SizedBox(height: 20.0),
        reusableTextField("Editar precio", Icons.money, false, controller2),
        SizedBox(height: 20.0),
        simpleButtonWithText(context, "Guardar cambios", Icons.save, () {
          print("Guardar cambios");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AdminPage()),
          );
        }),
      ],
    ),
  );
}
