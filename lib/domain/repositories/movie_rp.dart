import 'package:billboard/domain/entities/movie_entity.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getNowPlaying({int page = 1});
  Future<List<Movie>> getNowPopular({int page = 1});
  Future<List<Movie>> getUpcoming({int page = 1});
  Future<List<Movie>> getTopRated({int page = 1});
  Future<Movie> getMyId(String id);

  Future<List<Movie>> searchMovies(String query);
}
