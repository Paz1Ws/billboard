import 'package:billboard/infrastructure/datasources/TvMedia_dbdatasources.dart';
import 'package:billboard/infrastructure/repositories/TvMedia_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final TvContentProvider = Provider((ref) {
  return TvMediaImpl(TvMediaDB());
});
