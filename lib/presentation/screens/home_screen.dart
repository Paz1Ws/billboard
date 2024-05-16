import 'package:billboard/presentation/views/home_v.dart/favorites_view.dart';
import 'package:billboard/presentation/views/home_v.dart/home_view.dart';
import 'package:flutter/material.dart';
import 'package:billboard/presentation/widgets/shared/custom_navigation.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  final int pageIndex;

  HomeScreen({super.key, required this.pageIndex});

  final viewRoutes = <Widget>[
    HomeView(),
    SizedBox(), // <--- categorias View
    FavoritesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: pageIndex,
      ),
    );
  }
}
