import 'package:billboard/config/ambient.dart';
import 'package:billboard/domain/datasources/TvMedia_dt.dart';
import 'package:billboard/domain/entities/movie_entity.dart';
import 'package:billboard/infrastructure/mappers/moviedDB_mapper.dart';
import 'package:billboard/infrastructure/models/moviedb_model.dart';
import 'package:billboard/infrastructure/models/moviedb_response.dart';
import 'package:dio/dio.dart';

class TvMediaDB extends TvMediaDatasorce {
  @override
  final dio = Dio(BaseOptions(
      validateStatus: (_) => true,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {'api_key': Ambient.DbKey, 'language': 'es-MX'}));

  List<Movie> _jsonToMovies(Map<String, dynamic> json) {
    final movieDBResponse = MovieDbResponse.fromJson(json);

    final List<Movie> movies = movieDBResponse.results
        .where((moviedb) => moviedb.posterPath != 'no-poster')
        .map((moviedb) => MovieMapper.movieDBToEntity(moviedb))
        .toList();

    return movies;
  }

  @override
  Future<List<Movie>> GetTvMovies({page = 1}) async {
    final response =
        await dio.get('/trending/tv/day', queryParameters: {'page': page});

    return _jsonToMovies(response.data).toList();
  }

  @override
  Future<List<Movie>> GetTvShows({page = 1}) async {
    final response =
        await dio.get('/tv/airing_today', queryParameters: {'page': page});

    return _jsonToMovies(response.data).toList();
  }
}
