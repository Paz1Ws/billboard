import 'package:billboard/domain/datasources/movie_dt.dart';
import 'package:billboard/domain/entities/movie_entity.dart';
import 'package:billboard/infrastructure/repositories/movies_repositorie.dart';

class MovieRepositoryImpl extends MoviesRepository {
  final MoviesDatasource datasource;
  MovieRepositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }

  Future<List<Movie>> getNowPopular({int page = 1}) {
    return datasource.getNowPopular(page: page);
  }

  Future<List<Movie>> getUpcoming({int page = 1}) {
    return datasource.getUpcoming(page: page);
  }

  Future<List<Movie>> getTopRated({int page = 1}) {
    return datasource.getTopRated(page: page);
  }

  @override
  Future<Movie> getMyId(String id) {
    return datasource.getMyId(id);
  }

  @override
  Future<List<Movie>> searchMovies(String query) {
    return datasource.searchMovies(query);
  }
}
