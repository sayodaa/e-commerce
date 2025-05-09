import 'package:ecommerce/app.dart';
import 'package:ecommerce/core/app/bloc_observer.dart';
import 'package:ecommerce/core/app/envariablement.dart';
import 'package:ecommerce/core/di/ingecation_countainer.dart';
import 'package:ecommerce/core/services/shared_pref/shared_prefs.dart';
import 'package:ecommerce/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Envariablement.instance.init(envType: EnvTupeEnum.dev);

  await SharedPref().instantiatePreferences();

  Bloc.observer = AppBlocObserver();

  await setUpIngector();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    name: 'ecommerce',
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const StoreApp());
  });
}
