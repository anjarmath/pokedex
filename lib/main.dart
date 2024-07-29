import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/config/navigator_key.dart';
import 'package:pokedex/config/routes.dart';
import 'package:pokedex/di.dart';
import 'package:pokedex/features/pokemon/presentation/pages/home_screen.dart';

void main() {
  setupInjection();
  runApp(const ProviderScope(child: PokeDex()));
}

class PokeDex extends ConsumerWidget {
  const PokeDex({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigatorKey = ref.watch(routeNavigatorKeyProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PokeDex",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: PokeDexRoutes().generateRoutes,
      home: const HomeScreen(),
    );
  }
}
