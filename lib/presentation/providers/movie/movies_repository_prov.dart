import 'package:billboard/infrastructure/datasources/movies_dbdatasource.dart';
import 'package:billboard/infrastructure/repositories/movies_repositorie_impl.dart';
import 'package:riverpod/riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
