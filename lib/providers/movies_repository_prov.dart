import 'package:billboard/datasources/moviesdbdatasource.dart';
import 'package:billboard/repositories/moviesrepositories.dart';
import 'package:riverpod/riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
