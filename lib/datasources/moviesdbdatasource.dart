import 'package:billboard/config/ambient.dart';
import 'package:billboard/datasources/datasource.dart';
import 'package:billboard/datasources/models/moviedb_response.dart';
import 'package:billboard/domain/entities/movie_entity.dart';
import 'package:billboard/mappers/moviedDB_mapper.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends MoviesDatasource {
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {'api_key': Ambient.DbKey, 'language': 'es-MX'}));

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');
    final movieDBResponse = MovieDbResponse.fromJson(response.data);

    final List<Movie> movies = movieDBResponse.results
        .where((moviedb) => moviedb.posterPath != 'no-poster')
        .map((moviedb) => MovieMapper.movieDBToEntity(moviedb))
        .toList();

    return movies;
  }
}
