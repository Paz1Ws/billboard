import 'package:billboard/domain/datasources/TvMedia_dt.dart';
import 'package:billboard/domain/entities/movie_entity.dart';
import 'package:billboard/domain/repositories/TvMedia_rp.dart';

class TvMediaImpl extends TvMediaRepository {
  final TvMediaDatasorce datasource;
  TvMediaImpl(this.datasource);

  @override
  Future<List<Movie>> GetTvMovies({int page = 1}) {
    return datasource.GetTvMovies(page: page);
  }

  @override
  Future<List<Movie>> GetTvShows({int page = 1}) {
    return datasource.GetTvShows(page: page);
  }
}
