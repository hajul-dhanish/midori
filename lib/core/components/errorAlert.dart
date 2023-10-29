import 'package:flutter/material.dart';
import '../theme/themes/theme.dart';

class NoNetworkAlert extends StatefulWidget {
  const NoNetworkAlert({super.key});

  @override
  State<NoNetworkAlert> createState() => _NoNetworkAlertState();
}

class _NoNetworkAlertState extends State<NoNetworkAlert> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "You are Offline",
          style: AppTheme.of(context).title1,
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Text(
            "Your are not connected to the internet. Please connect to the internet and try again",
            textAlign: TextAlign.center,
            style: AppTheme.of(context).subtitle1,
          ),
        ),
      ],
    );
  }
}
