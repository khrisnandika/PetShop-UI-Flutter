import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_shop/constant.dart';
import 'package:pet_shop/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buldAppBar(),
      body: const Body(),
    );
  }

  AppBar buldAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/back.svg"),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
        ),
        const SizedBox(
          width: kDefaultPadding / 2,
        ),
      ],
    );
  }
}
