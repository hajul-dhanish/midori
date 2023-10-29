import 'package:flutter/material.dart';

import '../theme/themes/theme.dart';

class Utils {
  static String kNoImg = "assets/images/noimage.png";

  static Widget spikeLoader(BuildContext context,
      {double opacity = 0, Color color = Colors.transparent}) {
    return Center(
      child: Container(
        color: Colors.white.withOpacity(opacity),
        child: CircularProgressIndicator(
          color: color == Colors.transparent
              ? AppTheme.of(context).primaryColor
              : color,
        ),
      ),
    );
  }

  static Widget errorWidget(BuildContext context) {
    return Center(
      child: Text("Contact system support", style: AppTheme.of(context).title1),
    );
  }
}