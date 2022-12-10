import 'package:ecommerce_app/reusable_widgets/Product.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import '../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width * (20/375))),
      child: SizedBox(
        width: (MediaQuery.of(context).size.width * (width/375)),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * (20/375)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(product.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: (MediaQuery.of(context).size.width * (18/375)),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width * (8/375)),
                      height: (MediaQuery.of(context).size.width * (28/375)),
                      width: (MediaQuery.of(context).size.width * (28/375)),
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? Color(0xFFFF7643).withOpacity(0.15)
                            : Color(0xFF979797).withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.heart_broken_outlined,
                        color: product.isFavourite
                            ? Color(0xFFFF4848)
                            : Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
