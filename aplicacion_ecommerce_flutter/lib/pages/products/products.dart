import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonThings {
  static Size size = Size(0, 0);
}

class Producto extends StatelessWidget {
  const Producto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonThings.size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.41,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/NEKOSTORE PNG.png"))),
            ),
          ),
          //icon widgets
          Positioned(
              top: MediaQuery.of(context).size.height / 18.75,
              left: MediaQuery.of(context).size.height / 42.2,
              right: MediaQuery.of(context).size.height / 42.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40 / 2),
                        color: Color(0xFFfcf4e4),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF756d54),
                        size: MediaQuery.of(context).size.height / 52.75,
                      )),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40 / 2),
                        color: Color(0xFFfcf4e4),
                      ),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Color(0xFF756d54),
                        size: MediaQuery.of(context).size.height / 52.75,
                      ))
                ],
              )),
          //introduction of food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: (MediaQuery.of(context).size.height / 2.41) - 20,
              child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 42.2,
                    left: MediaQuery.of(context).size.height / 42.2,
                    right: MediaQuery.of(context).size.height / 42.2,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                              MediaQuery.of(context).size.height / 42.2),
                          topLeft: Radius.circular(
                              MediaQuery.of(context).size.height / 42.2)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Product 1",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 103, 195, 221),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto',
                                  fontSize: MediaQuery.of(context).size.height /
                                      32.46)),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 84.4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Wrap(
                                children: List.generate(
                                    5,
                                    (index) => Icon(Icons.star,
                                        color: Color.fromARGB(
                                            255, 103, 195, 221))),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.height / 84.4,
                              ),
                              Text("4.5",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 40, 38, 38),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    height: 1.2,
                                  )),
                              SizedBox(
                                  width: MediaQuery.of(context).size.height /
                                      84.4),
                              Text("1287 comments",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 40, 38, 38),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    height: 1.2,
                                  )),
                              SizedBox(
                                  width: MediaQuery.of(context).size.height /
                                      84.4),
                              Text("comments",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 40, 38, 38),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto',
                                    fontSize: 12,
                                    height: 1.2,
                                  )),
                            ],
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 42.2),
                          Row(
                            children: [
                              Row(children: [
                                Icon(Icons.circle_sharp,
                                    color: Color.fromARGB(255, 103, 179, 41),
                                    size: MediaQuery.of(context).size.height /
                                        35.16),
                                SizedBox(width: 5),
                                Text("Normal",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 40, 38, 38),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto',
                                      fontSize: 12,
                                      height: 1.2,
                                    )),
                              ]),
                              Row(children: [
                                Icon(Icons.location_on,
                                    color: Color.fromARGB(255, 65, 129, 202),
                                    size: MediaQuery.of(context).size.height /
                                        35.16),
                                SizedBox(width: 5),
                                Text("1.4km",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 40, 38, 38),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto',
                                      fontSize: 12,
                                      height: 1.2,
                                    )),
                              ]),
                              Row(children: [
                                Icon(Icons.access_time_rounded,
                                    color: Color.fromARGB(255, 185, 30, 103),
                                    size: MediaQuery.of(context).size.height /
                                        35.16),
                                SizedBox(width: 5),
                                Text("32min",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 40, 38, 38),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto',
                                      fontSize: 12,
                                      height: 1.2,
                                    )),
                              ]),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height / 42.2),
                      Text("Introduce",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Color.fromARGB(255, 103, 195, 221),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                              fontSize:
                                  MediaQuery.of(context).size.height / 32.46)),
                      Expanded(
                          child: SingleChildScrollView(
                              child: ExpandableTextWidget(
                                  text:
                                      "Describing food is not as easy as it would seem. How many ways can you say something was really tasty? Not enough to keep you interested in what you are writing. That is why we have to borrow words from other areas to describe the food and the effect it has on us")))
                    ],
                  )))
          //expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 7.03,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 28.13,
          bottom: MediaQuery.of(context).size.height / 28.13,
          left: MediaQuery.of(context).size.height / 42.2,
          right: MediaQuery.of(context).size.height / 42.2,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                    (MediaQuery.of(context).size.height / 42.2) * 20),
                topRight: Radius.circular(
                    (MediaQuery.of(context).size.height / 42.2) * 20)),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 42.2,
                  bottom: MediaQuery.of(context).size.height / 42.2,
                  left: MediaQuery.of(context).size.height / 42.2,
                  right: MediaQuery.of(context).size.height / 42.2,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height / 42.2),
                    color: Colors.white),
                child: Row(children: [
                  Icon(Icons.remove, color: Colors.grey),
                  SizedBox(width: MediaQuery.of(context).size.height / 168.8),
                  Text("0",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color.fromARGB(255, 103, 195, 221),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          fontSize: MediaQuery.of(context).size.height / 42.2)),
                  SizedBox(width: MediaQuery.of(context).size.height / 168.8),
                  Icon(Icons.add, color: Colors.grey),
                ])),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 28.13,
                bottom: MediaQuery.of(context).size.height / 28.13,
                left: MediaQuery.of(context).size.height / 42.2,
                right: MediaQuery.of(context).size.height / 42.2,
              ),
              child: Text(" \$10, Add to cart",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                      fontSize: MediaQuery.of(context).size.height / 42.2)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height / 42.2),
                  color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool flag = true;
  double height = CommonThings.size.height / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > height) {
      firstHalf = widget.text.substring(0, height.toInt());
      secondHalf =
          widget.text.substring(height.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? Text(firstHalf,
              style: TextStyle(
                color: Color.fromARGB(255, 40, 38, 38),
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto',
                fontSize: CommonThings.size.height / 52.75,
                height: 1.8,
              ))
          : Column(children: [
              Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf),
                  style: TextStyle(
                    color: Color.fromARGB(255, 40, 38, 38),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    fontSize: CommonThings.size.height / 52.75,
                    height: 1.8,
                  )),
              InkWell(
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                  child: Row(children: [
                    Text("Show more",
                        style: TextStyle(
                          color: Color.fromARGB(255, 103, 195, 221),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          height: 1.2,
                        )),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color.fromARGB(255, 103, 195, 221),
                      size: 12,
                    )
                  ]))
            ]),
    );
  }
}
