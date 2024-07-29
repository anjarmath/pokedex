import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemon/presentation/pages/detail_screen.dart';
import 'package:pokedex/features/pokemon/presentation/pages/home_screen.dart';

class PokeDexRoutes {
  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _route(const HomeScreen());
      case '/detail':
        return _route(DetailScreen(id: settings.arguments as String));
      default:
        return _route(const HomeScreen());
    }
  }

  static Route<dynamic> _route(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
