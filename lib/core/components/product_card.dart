import 'package:flutter/material.dart';

import '../theme/themes/theme.dart';

class ProductCardWidget extends StatelessWidget {
  final String title;
  final String disc;
  final String image;
  const ProductCardWidget(
      {super.key,
      required this.title,
      required this.disc,
      required this.image});

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius(double r) =>
        BorderRadius.all(Radius.circular(r));
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF846AFF),
            Color(0xFF755EE8),
            Colors.purpleAccent,
            Colors.amber,
          ],
        ),
        borderRadius: radius(16),
      ), // Adds a gradient background and rounded corners to the container
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(title,
                      style: AppTheme.of(context)
                          .bodyText1), // Adds a title to the card
                  const Spacer(),
                  Stack(
                    children: List.generate(
                      2,
                      (index) => Container(
                        margin: EdgeInsets.only(left: (15 * index).toDouble()),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: radius(100), color: Colors.white54),
                      ),
                    ),
                  ) // Adds a stack of two circular containers to the right of the title
                ],
              ),
              Text(disc, style: AppTheme.of(context).bodyText1)
            ],
          ),
          const Text("availability",
              style: TextStyle(
                  fontSize: 24,
                  color:
                      Colors.white)) // Adds a price to the bottom of the card
        ],
      ),
    );
  }
}
