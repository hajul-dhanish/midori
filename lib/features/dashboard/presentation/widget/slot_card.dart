import 'package:flutter/material.dart';

import '../../../../core/provider/network_params.dart';

class SlotCardWidget extends StatelessWidget {
  const SlotCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(OnlineImages.bannerImage),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        child: const ListTile(
          title: Text('Demo Title'),
          subtitle: Text('This is a simple card in Flutter.'),
        ),
      ),
    );
  }
}
