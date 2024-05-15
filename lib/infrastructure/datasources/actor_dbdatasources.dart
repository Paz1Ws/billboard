import 'package:billboard/config/ambient.dart';
import 'package:billboard/infrastructure/models/credits_model.dart';
import 'package:billboard/domain/datasources/actor_dt.dart';
import 'package:billboard/domain/entities/actor_entity.dart';
import 'package:billboard/infrastructure/mappers/actorDB_mapper.dart';
import 'package:dio/dio.dart';

class ActorMovieDbDatasource extends ActorsDatasource {
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {'api_key': Ambient.DbKey, 'language': 'es-MX'}));

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async {
    final response = await dio.get('/movie/$movieId/credits');

    final castResponse = CreditsResponse.fromJson(response.data);

    List<Actor> actors = castResponse.cast
        .map((cast) => ActorMapper.castToEntity(cast))
        .toList();

    return actors;
  }
}
