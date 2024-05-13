import 'package:go_router/go_router.dart';
import 'package:billboard/media/screens/homescreen.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => HomeScreen(),
  ),
]);
