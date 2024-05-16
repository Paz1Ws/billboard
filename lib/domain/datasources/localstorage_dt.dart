import 'package:billboard/domain/entities/movie_entity.dart';

abstract class LocalStorageDataSource {
  Future<void> toggleFavorite(Movie movie);
  Future<bool> movieFavorite(int id);
  Future<List<Movie>> loadFavoriteMovies();
}
