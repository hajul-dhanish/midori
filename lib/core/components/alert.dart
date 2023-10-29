
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/themes/theme.dart';

class Alert {
  // IOS Alert Dialogue
  Future commmonIOSAlert(
    BuildContext context, {
    String title = "",
    String content = "",
    String action1 = "",
    String action2 = "",
  }) {
    return showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(title),
        content: content != "" ? Text(content) : null,
        actions: <Widget>[
          if (action1 != "")
            CupertinoDialogAction(
              child: Text(action1),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          if (action2 != "")
            CupertinoDialogAction(
              child: Text(action2),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
        ],
      ),
    );
  }

  showLoaderDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            const Opacity(
              opacity: 0.5,
              child: ModalBarrier(dismissible: false, color: Colors.black),
            ),
            Center(
              child: CupertinoActivityIndicator(
                color: AppTheme.of(context).primaryColor,
              ),
            ),
          ],
        );
      },
    );
  }
}
