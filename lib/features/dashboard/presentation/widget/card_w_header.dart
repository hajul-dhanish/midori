import 'package:flutter/material.dart';
import 'package:midori/core/provider/network_params.dart';

import '../../../../core/components/cachedImage.dart';
import 'slot_card.dart';

class CardsWHeader extends StatelessWidget {
  final String header;

  const CardsWHeader({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header),
        const SizedBox(height: 6),
        ListView.builder(
            itemCount: 6,
            // scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const SlotCardWidget()),
      ],
    );
  }
}
