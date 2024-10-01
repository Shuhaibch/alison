import 'package:alison/features/home/domain/repository/home_repository.dart';
import 'package:alison/features/home/presentation/bloc/home_bloc.dart';
import 'package:alison/features/login/domain/repository/user_repository.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;
Future<void> initDependencies() async {
  _initAuth();
  // // Core
  // serviceLocator.registerLazySingleton(() => AppUserCubit());
}

void _initAuth() {
  serviceLocator
    ..registerFactory(() => HomeController())
    ..registerFactory(() => AuthController());
  // //* Bloc
  serviceLocator.registerLazySingleton(
    () => HomeBloc(
      controller: serviceLocator(),
    ),
  );
}
