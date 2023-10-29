import 'package:flutter/material.dart';
import 'package:midori/core/components/cachedImage.dart';

import '../../../../core/provider/network_params.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return customCachedWebImage(
      imageUrl: OnlineImages.bannerImage,
      height: 200,
    );
  }
}
