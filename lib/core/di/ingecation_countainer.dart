import 'package:dio/dio.dart';
import 'package:ecommerce/core/app/cubit/app_cubit.dart';
import 'package:ecommerce/core/services/graphql/api_service.dart';
import 'package:ecommerce/core/services/graphql/dio_factory.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpIngector() async{
    _initCore();
}
final Dio dio = DioFactory.getDio();
void _initCore() {
  getIt
  ..registerFactory(AppCubit.new)
  ..registerLazySingleton(()=> ApiService(dio));
}
