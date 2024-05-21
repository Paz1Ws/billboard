import 'package:billboard/domain/datasources/localstorage_dt.dart';
import 'package:billboard/domain/entities/movie_entity.dart';
import 'package:billboard/domain/repositories/localStorage_rp.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository {
  final LocalStorageDataSource datasource;
  LocalStorageRepositoryImpl(this.datasource);
  @override
  Future<List<Movie>> loadFavoriteMovies() {
    return datasource.loadFavoriteMovies();
  }

  @override
  Future<bool> movieFavorite(int id) {
    return datasource.movieFavorite(id);
  }

  @override
  Future<void> toggleFavorite(Movie movie) {
    return datasource.toggleFavorite(movie);
  }
}
