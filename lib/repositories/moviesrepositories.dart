import 'package:billboard/datasources/datasource.dart';
import 'package:billboard/domain/entities/movie_entity.dart';
import 'package:billboard/repositories/repositorie.dart';

class MovieRepositoryImpl extends MoviesRepository {
  final MoviesDatasource datasource;
  MovieRepositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }
}
