import 'package:billboard/presentation/screens/home_screen.dart';
import 'package:billboard/presentation/screens/movie_screen.dart';
import 'package:billboard/presentation/views/home_v.dart/TvContent_view.dart';

import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/home/0', routes: [
  GoRoute(
      path: '/home/:page',
      name: HomeScreen.name,
      builder: (context, state) {
        final pageIndex = int.parse(state.pathParameters['page'] ?? '0');

        return HomeScreen(
          pageIndex: pageIndex,
        );
      },
      routes: [
        GoRoute(
          path: 'movie/:id',
          name: MovieScreen.name,
          builder: (context, state) {
            final movieId = state.pathParameters['id'] ?? 'no-id';

            return MovieScreen(movieId: movieId);
          },
        ),
        GoRoute(
          path: 'tvMovies/:id',
          name: TVContentView.name,
          builder: (context, state) {
            return TVContentView();
          },
        ),
      ]),
  GoRoute(
    path: '/',
    redirect: (_, __) => '/home/0',
  ),
]);
