import 'package:flutter/material.dart';
import 'package:pet_shop/constant.dart';
import 'package:pet_shop/models/product.dart';
import 'package:pet_shop/screens/details/components/color_and_age.dart';
import 'package:pet_shop/screens/details/components/product_title_with_image.dart';

class BodyDetail extends StatelessWidget {
  final Product product;

  const BodyDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndAge(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Text(
                          product.description,
                        ),
                      ),
                    ],
                  ),
                ),
                ProductTitleWIthImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
