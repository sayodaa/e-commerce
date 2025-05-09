import 'package:ecommerce/core/app/cubit/app_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpIngector() async{
    _initCore();
}

void _initCore() {
  getIt.registerFactory(AppCubit.new);
}
