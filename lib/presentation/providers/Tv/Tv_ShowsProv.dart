import 'package:billboard/domain/entities/movie_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:billboard/presentation/providers/Tv/Tv_prov.dart';

final tvShowsProv = StateNotifierProvider<ShowsNotifier, List<Movie>>((ref) {
  final fetchMoreMovies = ref.watch(TvContentProvider).GetTvShows();
  return ShowsNotifier(fetchMoreMovies: fetchMoreMovies);
});

typedef ShowsCallback = Future<List<Movie>>;

class ShowsNotifier extends StateNotifier<List<Movie>> {
  int currentPage = 0;
  bool isLoading = false;
  ShowsCallback fetchMoreMovies;

  ShowsNotifier({
    required this.fetchMoreMovies,
  }) : super([]);

  Future<void> loadNextPage() async {
    if (isLoading) return;
    isLoading = true;

    currentPage++;
    final List<Movie> movies = await fetchMoreMovies;
    state = [...state, ...movies];

    await Future.delayed(const Duration(milliseconds: 300));
    isLoading = false;
  }
}
