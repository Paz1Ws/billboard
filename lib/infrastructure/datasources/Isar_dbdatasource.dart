import 'package:billboard/domain/datasources/localstorage_dt.dart';
import 'package:billboard/domain/entities/movie_entity.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarDatasource extends LocalStorageDataSource {
  late Future<Isar> isarDB;
  IsarDatasource() {
    isarDB = openDB();
  }
  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([MovieSchema],
          inspector: true, directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  }

  @override
  Future<List<Movie>> loadFavoriteMovies() {
    // TODO: implement loadFavoriteMovies
    throw UnimplementedError();
  }

  @override
  Future<bool> movieFavorite(int id) {
    // TODO: implement movieFavorite
    throw UnimplementedError();
  }

  @override
  Future<void> toggleFavorite(Movie movie) {
    // TODO: implement toggleFavorite
    throw UnimplementedError();
  }
}
