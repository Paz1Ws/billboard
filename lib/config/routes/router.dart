import 'package:billboard/presentation/screens/homescreen.dart';
import 'package:billboard/presentation/screens/movie_screen.dart';
import 'package:billboard/presentation/views/home_v.dart/favorites_view.dart';
import 'package:billboard/presentation/views/home_v.dart/home_view.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  ShellRoute(
      builder: (context, state, child) {
        return HomeScreen(childView: child);
      },
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) {
              return const HomeView();
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
            ]),
        GoRoute(
          path: '/favorites',
          builder: (context, state) {
            return FavoritesView();
          },
        ),
      ]),

  // Rutas padre/hijo
  // GoRoute(
  //   path: '/',
  //   name: HomeScreen.name,
  //   builder: (context, state) => const HomeScreen( childView: HomeView(), ),
  //   routes: [
  //      GoRoute(
  //       path: 'movie/:id',
  //       name: MovieScreen.name,
  //       builder: (context, state) {
  //         final movieId = state.params['id'] ?? 'no-id';

  //         return MovieScreen( movieId: movieId );
  //       },
  //     ),
  //   ]
  // ),
]);
