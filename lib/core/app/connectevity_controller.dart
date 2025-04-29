import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectevityController {
  ConnectevityController._();

  static final ConnectevityController instance = ConnectevityController._();

  ValueNotifier<bool> isConnected = ValueNotifier(true);

  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    isConnectivity(result);
    Connectivity().onConnectivityChanged.listen((isConnectivity) {
      
    });
  }
  
  bool isConnectivity( List<ConnectivityResult>? result) {
    if (result == null || result.isEmpty) {
      isConnected.value = false;
      return false;
    }
    if (result.contains(ConnectivityResult.none)) {
      isConnected.value = false;
      return false;
    } else if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
          isConnected.value = true;
      return true;
    }
    isConnected.value = false;
    return false;
  }
}
