import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return BottomNavigationBar(
      backgroundColor: colors.background,
      selectedItemColor: colors.primary,
      unselectedItemColor: colors.secondary,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter), label: 'Movies'),
        BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'TV Shows'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
