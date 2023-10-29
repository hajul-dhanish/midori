import 'package:flutter/material.dart';

import '../theme/themes/theme.dart';

enum FailureStatus { networkFailure }

class FailureWidget extends StatelessWidget {
  final status;
  FailureWidget({required this.status, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          "Contact system support",
          style: AppTheme.of(context).title2,
        ),
      ),
    );
  }
}
