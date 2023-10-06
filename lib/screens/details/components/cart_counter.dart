import 'package:flutter/material.dart';
import 'package:pet_shop/constant.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(icon: Icons.remove, press: () {
          if (numOfItems > 1) {
            setState(() {
            numOfItems--;
          });
          }
        },),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        buildOutlinedButton(icon: Icons.add, press: () {
          setState(() {
            numOfItems++;
          });
        },),
      ],
    );
  }
}

class buildOutlinedButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback press; 

  const buildOutlinedButton({
    super.key,
    required this.icon, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 40,
      child: OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        child: Icon(
          icon,
        ),
      ),
    );
  }
}