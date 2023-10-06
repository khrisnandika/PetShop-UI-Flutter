import 'package:flutter/material.dart';
import 'package:pet_shop/constant.dart';
import 'package:pet_shop/models/product.dart';
import 'package:pet_shop/screens/details/add_to_cart.dart';
import 'package:pet_shop/screens/details/components/color_and_age.dart';
import 'package:pet_shop/screens/details/components/counter_with_favbtn.dart';
import 'package:pet_shop/screens/details/components/description.dart';
import 'package:pet_shop/screens/details/components/product_title_with_image.dart';

class BodyDetail extends StatelessWidget {
  final Product product;

  const BodyDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
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
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      const ColorAndAge(),
                      Description(product: product),
                      const SizedBox(height: kDefaultPadding),
                      const CounterWithFavBtn(),
                      const SizedBox(height: kDefaultPadding),
                      AddToCart(product: product),
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
