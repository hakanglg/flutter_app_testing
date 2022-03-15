import 'package:flutter/material.dart';
import 'package:flutter_app_testing/screens/favorites.dart';
import 'package:provider/provider.dart';

import 'models/favorites.dart';
import 'screens/home.dart';

void main() => runApp(TestingApp());

class TestingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp(
        title: 'Testing Sample',
        theme: ThemeData.dark(),
        routes: {
          HomePage.routeName: (context) => HomePage(),
          FavoritesPage.routeName: ((context) => FavoritesPage())
        },
        initialRoute: HomePage.routeName,
      ),
    );
  }
}
