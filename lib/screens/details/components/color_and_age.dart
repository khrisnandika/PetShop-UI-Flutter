import 'package:flutter/material.dart';
import 'package:pet_shop/constant.dart';

class ColorAndAge extends StatelessWidget {
  const ColorAndAge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 70,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Color"),
              Row(
                children: [
                  ColorDot(
                    color: Colors.brown.shade400,
                    isSelected: true,
                  ),
                  const ColorDot(color: Colors.grey),
                  const ColorDot(color: Colors.black),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(text: "Age\n"),
                TextSpan(
                  text: "3 months old",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPadding / 4,
        right: kDefaultPadding / 2,
      ),
      padding: const EdgeInsets.all(2.4),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
