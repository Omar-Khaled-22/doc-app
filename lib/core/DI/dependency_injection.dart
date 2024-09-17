import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:newflutterproject/core/Networking/api_service.dart';
import 'package:newflutterproject/core/Networking/dio_factory.dart';
import 'package:newflutterproject/features/login/data/repos/login_repo.dart';
import 'package:newflutterproject/features/login/logic/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIT() async{
  // Dio and Api Service

  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton(() => LoginRepo(getIt()));
  getIt.registerLazySingleton(() => LoginCubit(getIt()));

}