import 'package:flutter/material.dart';

import '../widget/banner_widget.dart';
import '../widget/card_w_header.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        BannerWidget(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: CardsWHeader(header: "Trending near you"),
        ),
      ],
    );
  }
}
