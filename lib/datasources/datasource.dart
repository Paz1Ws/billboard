import '../domain/entities/movie_entity.dart';

abstract class MoviesDatasource {
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    return [];
  }
}
