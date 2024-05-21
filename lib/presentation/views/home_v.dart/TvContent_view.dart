import 'package:billboard/presentation/providers/Tv/Tv_MoviesProv.dart';
import 'package:billboard/presentation/providers/Tv/Tv_ShowsProv.dart';
import 'package:billboard/presentation/widgets/movies/listviewshow.dart';
import 'package:billboard/presentation/widgets/movies/mansonrywidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:billboard/presentation/providers/Tv/Tv_MoviesProv.dart'
    as moviesProv;

class TVContentView extends ConsumerStatefulWidget {
  static String name = "TvMovies";
  const TVContentView({super.key});

  @override
  TvMoviesViewState createState() => TvMoviesViewState();
}

class TvMoviesViewState extends ConsumerState<TVContentView> {
  @override
  Widget build(BuildContext context) {
    final tvShow = ref.watch(tvShowsProv);
    final tvMovies = ref.watch(tvMovieProv);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("TvMovies")),
      ),
      body: Container(
        child: ListView(
          children: [
            MovieHorizontalListview(
              movies: tvMovies,
              itemCount: tvMovies.length,
              title: "Movies",
              subTitle: "Popular Movies",
              loadNextPage: () => ref.read(tvMovieProv.notifier).loadNextPage(),
            ),
            MovieHorizontalListview(
              movies: tvShow,
              itemCount: tvShow.length,
              title: "TvShows",
              subTitle: "Popular TvShows",
              loadNextPage: () => ref.read(tvShowsProv.notifier).loadNextPage(),
            ),
          ],
        ),
      ),
    );
  }
}
