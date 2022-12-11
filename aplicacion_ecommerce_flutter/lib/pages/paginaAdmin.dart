import 'package:aplicacion_ecommerce_flutter/reusable_widgets/reusable_widget.dart';
import 'package:aplicacion_ecommerce_flutter/utils/color_utils.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          optionsBar2(context),
        ],
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
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/NEKOSTORE PNG.png"),
                AdminOptions(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
