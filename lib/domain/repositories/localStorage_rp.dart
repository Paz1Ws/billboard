import 'package:billboard/domain/entities/movie_entity.dart';

abstract class LocalStorageRepository {
  Future<void> toggleFavorite(Movie movie);
  Future<bool> movieFavorite(int id);
  Future<List<Movie>> loadFavoriteMovies();
}
