import 'package:flutter/material.dart';
import 'package:pet_shop/constant.dart';
import 'package:pet_shop/models/product.dart';

class ProductTitleWIthImage extends StatelessWidget {
  const ProductTitleWIthImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hewan Peliharaan",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product.title,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "Rp.${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    height: 300,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}