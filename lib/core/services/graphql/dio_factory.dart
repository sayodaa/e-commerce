import 'package:dio/dio.dart';
import 'package:ecommerce/core/services/shared_pref/shared_pref_keys.dart';
import 'package:ecommerce/core/services/shared_pref/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    const timeOut = Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.headers['Authorization'] =
            'Bearer ${SharedPref().getString(SharedPrefKeys.accessToken)}';

      debugPrint(
        "[USER Token] ====> ${SharedPref().getString(SharedPrefKeys.accessToken)
        ?? 'NULL TOKEN'}",
      );

      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(PrettyDioLogger(request: false, compact: false));
  }
}
