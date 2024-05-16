import 'package:billboard/domain/datasources/localstorage_dt.dart';
import 'package:billboard/domain/entities/movie_entity.dart';

class IsarDatasource extends LocalStorageDataSource {
  final LocalStorageDataSource datasource;
  IsarDatasource(this.datasource);
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
