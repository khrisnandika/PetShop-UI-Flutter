import 'package:flutter/material.dart';
import 'package:pet_shop/constant.dart';
import 'package:pet_shop/models/product.dart';
import 'package:pet_shop/screens/components/categories.dart';
import 'package:pet_shop/screens/components/item_card.dart';
import 'package:pet_shop/screens/details/details_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Hewan",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: kDefaultPadding,
              ),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(product: products[index]),
                      ));
                },
                child: ItemCard(
                  product: products[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
