import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mon_hopital/core/networking/api_services.dart';
import 'package:mon_hopital/core/networking/dio_factory.dart';
import 'package:mon_hopital/features/login/data/repository/login_repository.dart';
import 'package:mon_hopital/features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));


  // login
  getIt.registerLazySingletonAsync<LoginRepository>(() async => Future.value(LoginRepository(getIt())));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
