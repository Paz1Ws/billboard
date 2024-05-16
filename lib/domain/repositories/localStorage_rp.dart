import 'package:billboard/domain/entities/movie_entity.dart';

abstract class LocalStorageDataSource {
  Future<void> toggleFavorite();
  Future<bool> movieFavorite(int id);
  Future<List<Movie>> loadFavoriteMovies();
}
