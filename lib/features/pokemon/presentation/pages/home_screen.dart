import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/features/pokemon/presentation/provider/get_all_pokemons_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        ref.read(allPokemonProvider.notifier).fetchPokemon();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pokemons = ref.watch(allPokemonProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("PokeDex"),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.read(allPokemonProvider.notifier).reload();
        },
        child: ListView.builder(
          controller: scrollController,
          itemCount: pokemons.data.length + 1,
          itemBuilder: (context, index) {
            return index == pokemons.data.length
                ? pokemons.loading
                    ? const Center(child: CircularProgressIndicator.adaptive())
                    : const SizedBox()
                : ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, "/detail",
                          arguments: pokemons.data[index].id);
                    },
                    leading: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Image.network(
                        pokemons.data[index].image,
                        width: 56,
                        fit: BoxFit.contain,
                        colorBlendMode: BlendMode.colorBurn,
                      ),
                    ),
                    title: Text(pokemons.data[index].name),
                    subtitle: Text(pokemons.data[index].classification),
                  );
          },
        ),
      ),
    );
  }
}
