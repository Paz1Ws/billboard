import 'package:billboard/domain/entities/movie_entity.dart';
import 'package:billboard/presentation/providers/Tv/Tv_prov.dart';
import 'package:billboard/presentation/providers/movie/movies_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tvMovieProv = StateNotifierProvider<MoviesNotifier, List<Movie>>((ref) {
  final fetchMoreMovies = ref.watch(TvContentProvider).GetTvMovies;
  return MoviesNotifier(fetchMoreMovies: fetchMoreMovies);
});

class MoviesTvNotifier extends StateNotifier<List<Movie>> {
  int currentPage = 0;
  bool isLoading = false;
  final MovieCallback fetchMoreMovies;

  MoviesTvNotifier({
    required this.fetchMoreMovies,
  }) : super([]);

  Future<void> loadNextPage() async {
    if (isLoading) return;
    isLoading = true;

    currentPage++;
    final List<Movie> movies = await fetchMoreMovies(page: currentPage);
    state = [...state, ...movies];

    await Future.delayed(const Duration(milliseconds: 300));
    isLoading = false;
  }
}
