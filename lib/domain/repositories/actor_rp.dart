import 'package:billboard/domain/entities/actor_entity.dart';

abstract class ActorsRepository {
  Future<List<Actor>> getActorsByMovie(String movieId);
}
