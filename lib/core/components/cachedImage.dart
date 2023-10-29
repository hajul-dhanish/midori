import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

Widget customCachedWebImage({
  required String imageUrl,
  double width = 100,
  double height = 100,
  fit = BoxFit.cover,
}) {
  return CachedNetworkImage(
    imageUrl: imageUrl,
    useOldImageOnUrlChange: true,
    placeholder: (context, url) => FittedBox(
        fit: BoxFit.scaleDown, child: Utils.spikeLoader(context, opacity: 0.0)),
    errorWidget: (context, url, error) => Image.asset(
      Utils.kNoImg,
      fit: BoxFit.scaleDown,
    ),
    width: width,
    height: height,
    fit: fit,
  );
}
