import 'package:flutter/material.dart';
import 'package:pet_shop/models/product.dart';

class BodyDetail extends StatelessWidget {
  final Product product;

  const BodyDetail({super.key, required this.product});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color
    );
  }
}