import 'dart:math';

import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTupeEnum { dev, product }

class Envariablement {
  Envariablement._();

  static final Envariablement instance = Envariablement._();
  
  String _envType = '';

  Future<void> init({required EnvTupeEnum envType}) async {
  switch (envType) {
    case EnvTupeEnum.dev:
      await dotenv.load(fileName: '.env.dev');
    case EnvTupeEnum.product:
      await dotenv.load(fileName: '.env.prod');
  }
  _envType = dotenv.get('ENV_TYPE');
  }
  
}
