import 'package:billboard/domain/entities/actor_entity.dart';

abstract class ActorsDatasource {
  Future<List<Actor>> getActorsByMovie(String movieId);
}
