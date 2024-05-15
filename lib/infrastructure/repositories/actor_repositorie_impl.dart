import 'package:billboard/domain/datasources/actor_dt.dart';
import 'package:billboard/domain/entities/actor_entity.dart';
import 'package:billboard/domain/repositories/actor_rp.dart';

class ActorRepositoryImpl extends ActorsRepository {
  final ActorsDatasource datasource;
  ActorRepositoryImpl(this.datasource);

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) {
    return datasource.getActorsByMovie(movieId);
  }
}
