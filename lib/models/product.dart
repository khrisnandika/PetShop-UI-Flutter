import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Kucing Anggora",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/cat.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Kucing Persia",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/cat2.png",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Anjing Pudel",
      price: 100,
      size: 10,
      description: dummyText,
      image: "assets/images/dog.png",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Anjing German",
      price: 112,
      size: 11,
      description: dummyText,
      image: "assets/images/dog5.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Anjing Beagle",
      price: 231,
      size: 12,
      description: dummyText,
      image: "assets/images/dog3.png",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Anjing Golden",
    price: 123,
    size: 12,
    description: dummyText,
    image: "assets/images/dog4.png",
    color: const Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
