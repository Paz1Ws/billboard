import 'package:billboard/infrastructure/datasources/Isar_dbdatasource.dart';
import 'package:billboard/infrastructure/repositories/isar_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localStorageProvider = Provider((ref) {
  return LocalStorageRepositoryImpl(IsarDatasource());
});
