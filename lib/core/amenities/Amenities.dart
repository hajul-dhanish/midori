import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../components/errorAlert.dart';
import '../routes/nav.dart';

//network check
ConnectivityResult connectionStatus = ConnectivityResult.none;
final Connectivity connectivity = Connectivity();
late StreamSubscription<ConnectivityResult> connectivitySubscription;

class Amenities with ChangeNotifier {
  Future<void> connectivityChecker(context) async {
    late ConnectivityResult result;
    try {
      result = await connectivity.checkConnectivity();
    } catch (e) {
      return;
    }
    return updateConnectionStatus(result);
  }

  bool showAlert = false;
  Future<void> updateConnectionStatus(ConnectivityResult result) async {
    connectionStatus = result;
    if (identical(connectionStatus, ConnectivityResult.none)) {
      showAlert = true;
      pushContext(NavigationService.navigatorKey.currentContext,
          route:
              const Material(child: Center(child: NoNetworkAlert())));
    } else if (identical(connectionStatus, ConnectivityResult.mobile) ||
        identical(connectionStatus, ConnectivityResult.wifi)) {
      if (showAlert) {
        popContext(NavigationService.navigatorKey.currentContext);
      }
      showAlert = false;
    }
    notifyListeners();
  }
}
