import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
export 'serialization_util.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

popContext(context, [dynamic result]) {
  Navigator.pop(context, result);
}

pushContext(context,
    {required route,
    PageTransitionType type = PageTransitionType.leftToRight,
    Function(dynamic)? function}) {
  Navigator.push(
    context,
    PageTransition(
      child: route,
      type: type,
    ),
  ).then((value) {
    if (value != null) {
      function!(value);
    }
  });
}

pushReplacementContext(context,
    {required route,
    PageTransitionType type = PageTransitionType.leftToRight,
    Function(dynamic)? function}) {
  Navigator.pushReplacement(
    context,
    PageTransition(
      child: route,
      type: type,
    ),
  ).then((value) {
    if (value != null) {
      function!(value);
    }
  });
}

class AppStateNotifier extends ChangeNotifier {
  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}
