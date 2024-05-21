import 'package:billboard/domain/entities/movie_entity.dart';

abstract class TvMediaDatasorce {
  Future<List<Movie>> GetTvMovies({int page = 1});
  Future<List<Movie>> GetTvShows({int page = 1});
}
