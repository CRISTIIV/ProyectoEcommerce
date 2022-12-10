import 'package:ecommerce_app/pages/categories.dart';
import 'package:ecommerce_app/pages/signin_screen.dart';
import 'package:ecommerce_app/reusable_widgets/Product.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget{
  
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: (MediaQuery.of(context).size.height * (20/812))),
            HomeHeader(context),
            SizedBox(height: (MediaQuery.of(context).size.width * (10/375))),
            Container(
              // height: 90,
              width: double.infinity,
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * (20/375)),
              padding: EdgeInsets.symmetric(
                horizontal: (MediaQuery.of(context).size.width * (20/375)),
                vertical: (MediaQuery.of(context).size.width * (15/375)),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF4A3298),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(text: "Sorpresa de Verano\n"),
                    TextSpan(
                      text: "Cashback 20%",
                      style: TextStyle(
                        fontSize: (MediaQuery.of(context).size.width * (24/375)),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Categories(),
            SizedBox(height: (MediaQuery.of(context).size.width * (30/375))),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width * (20/375))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Productos Populares",
                        style: TextStyle(
                          fontSize: (MediaQuery.of(context).size.width * (18/375)),
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Text(
                          "See More",
                          style: TextStyle(color: Color(0xFFBBBBBB)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: (MediaQuery.of(context).size.width * (20/375))),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        demoProducts.length,
                        (index) {
                          if (demoProducts[index].isPopular)
                            return ProductCard(product: demoProducts[index]);

                          return SizedBox
                            .shrink(); // here by default width and height is 0
                        },
                      ),
                      SizedBox(width: (MediaQuery.of(context).size.width * (20/375))),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: (MediaQuery.of(context).size.width * (30/375))),
          ],
        ),
      ),
    );
  }
  
  Padding HomeHeader(context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width * (20/375))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * (0.6),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 221, 32, 238).withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
              ),
            child: TextField(
              onChanged: (value) => print(value),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: (MediaQuery.of(context).size.width * (20/375)),
                  vertical: (MediaQuery.of(context).size.width * (9/375))),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: "Search product",
                prefixIcon: Icon(Icons.search)),
            ),
          ),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                //VER CARRITO DE COMPRAS
                print("Carrito de compras");
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()));//CartScreen()));
              },
            ),
        ],
      ),
    );
  }
}