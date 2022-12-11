import 'package:ecommerce_app/reusable_widgets/reusable_widget.dart';
import 'package:ecommerce_app/utils/color_utils.dart';
import 'package:flutter/material.dart';

class EditStock extends StatefulWidget {
  const EditStock({Key? key}) : super(key: key);

  @override
  _EditStockState createState() => _EditStockState();
}

class _EditStockState extends State<EditStock> {
  TextEditingController _priceTextController = TextEditingController();
  TextEditingController _stockTextController = TextEditingController();
  TextEditingController _productNameTextController = TextEditingController();
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
            child: Padding(padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/NEKOSTORE PNG.png"),
                StockModifier(context,_stockTextController, _priceTextController, _productNameTextController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}