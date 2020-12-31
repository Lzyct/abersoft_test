import 'package:abersoft/data/repositories/repositories.dart';
import 'package:abersoft/data/sources/sources.dart';
import 'package:get_it/get_it.dart';

import 'di.dart';

var sl = GetIt.instance;

Future<void> serviceLocator() async {
  sl.registerFactory<API>(() => API());
  sl.registerFactory<RestApiImpl>(() => RestApiImpl());

  //register  Repositories
  sl.registerLazySingleton(() => LoginRegisterRepository());
}
