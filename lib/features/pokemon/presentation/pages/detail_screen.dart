import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/features/pokemon/presentation/provider/get_pokemon_detail_provider.dart';
import 'package:pokedex/features/pokemon/presentation/widget/gap.dart';

import '../widget/detail_card.dart';

class DetailScreen extends ConsumerWidget {
  const DetailScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonDetail = ref.watch(pokemonDetailNotifierProvider(id));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Pokemon Detail"),
        actions: [
          IconButton(
              onPressed: () {
                pokemonDetail.getDetail();
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: pokemonDetail.loading
          ? const Center(child: CircularProgressIndicator())
          : pokemonDetail.data == null
              ? const Center(
                  child: Text("Fail to get your Pokemon"),
                )
              : ListView(
                  padding: const EdgeInsets.all(12),
                  children: [
                    AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.network(pokemonDetail.data!.image)),
                    const Gap(),
                    Text(
                      pokemonDetail.data!.name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      pokemonDetail.data!.classification,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 8.0, // space between badges horizontally
                      runSpacing: 8.0, // space between badges vertically
                      children: pokemonDetail.data!.types
                          .map((label) => Badge(label: Text(label)))
                          .toList(),
                    ),
                    const Gap(),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisSpacing: 12,
                      childAspectRatio: 1.4,
                      children: [
                        DetailCard(
                          title: const CircleAvatar(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            child: Icon(Icons.scale),
                          ),
                          detail:
                              "${pokemonDetail.data!.weight.minimum} - ${pokemonDetail.data!.weight.maximum}",
                        ),
                        DetailCard(
                          title: const CircleAvatar(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            child: Icon(Icons.height),
                          ),
                          detail:
                              "${pokemonDetail.data!.height.minimum} - ${pokemonDetail.data!.height.maximum}",
                        ),
                        DetailCard(
                          title: const CircleAvatar(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                            child: Icon(Icons.sick),
                          ),
                          detail: pokemonDetail.data!.resistant.join(", "),
                        ),
                        DetailCard(
                          title: const CircleAvatar(
                            backgroundColor: Colors.purple,
                            foregroundColor: Colors.white,
                            child: Icon(Icons.directions_run),
                          ),
                          detail: pokemonDetail.data!.fleeRate.toString(),
                        ),
                        DetailCard(
                          title: Text(
                            "Max CP",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.red),
                          ),
                          detail: pokemonDetail.data!.maxCP.toString(),
                        ),
                        DetailCard(
                          title: Text(
                            "Max HP",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.indigo),
                          ),
                          detail: pokemonDetail.data!.maxHP.toString(),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      shape: const RoundedRectangleBorder(),
                      title: const Text("Fast Attack"),
                      children: pokemonDetail.data!.attacks.fast.map((attack) {
                        return ListTile(
                          visualDensity: VisualDensity.compact,
                          dense: true,
                          title: Text(attack.name),
                          subtitle: Text(attack.type),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.local_fire_department,
                                color: Colors.red,
                              ),
                              Text(attack.damage.toString())
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                    ExpansionTile(
                      shape: const RoundedRectangleBorder(),
                      title: const Text("Special Attack"),
                      children:
                          pokemonDetail.data!.attacks.special.map((attack) {
                        return ListTile(
                          visualDensity: VisualDensity.compact,
                          dense: true,
                          title: Text(attack.name),
                          subtitle: Text(attack.type),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.local_fire_department,
                                color: Colors.red,
                              ),
                              Text(attack.damage.toString())
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                    if (pokemonDetail.data!.evolutionRequirements != null)
                      ListTile(
                        title: const Text("Evolution Requirements"),
                        trailing: Text(
                            "${pokemonDetail.data!.evolutionRequirements?.amount}X ${pokemonDetail.data!.evolutionRequirements?.name}"),
                      ),
                    if (pokemonDetail.data!.evolutions != null)
                      ExpansionTile(
                        shape: const RoundedRectangleBorder(),
                        title: const Text("Evolutions"),
                        children: pokemonDetail.data!.evolutions!
                            .map(
                              (evo) => ListTile(
                                onTap: () {
                                  Navigator.pushNamed(context, "/detail",
                                      arguments: evo.id);
                                },
                                visualDensity: VisualDensity.compact,
                                dense: true,
                                leading: Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Image.network(
                                    evo.image,
                                    width: 48,
                                    fit: BoxFit.contain,
                                    colorBlendMode: BlendMode.colorBurn,
                                  ),
                                ),
                                title: Text(
                                  evo.name,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                  ],
                ),
    );
  }
}
