import 'pokemons.dart';

class PokemonDetail {
  final String id;
  final String name;
  final String classification;
  final String image;
  final List<String> types;
  final PokemonDimension weight;
  final PokemonDimension height;
  final List<String> resistant;
  final PokemonAttack attacks;
  final List<String> weaknesses;
  final double fleeRate;
  final int maxCP;
  final List<Pokemons>? evolutions;
  final PokemonEvolutionRequirement? evolutionRequirements;
  final int maxHP;
  PokemonDetail({
    required this.id,
    required this.name,
    required this.classification,
    required this.image,
    required this.types,
    required this.weight,
    required this.height,
    required this.resistant,
    required this.attacks,
    required this.weaknesses,
    required this.fleeRate,
    required this.maxCP,
    required this.evolutions,
    required this.evolutionRequirements,
    required this.maxHP,
  });
}

// Some detail class bellow
class PokemonDimension {
  final String minimum;
  final String maximum;
  PokemonDimension({
    required this.minimum,
    required this.maximum,
  });
}

class PokemonAttack {
  final List<Attack> fast;
  final List<Attack> special;
  PokemonAttack({required this.fast, required this.special});
}

class Attack {
  final String name;
  final String type;
  final int damage;
  Attack({
    required this.name,
    required this.type,
    required this.damage,
  });
}

class PokemonEvolutionRequirement {
  final int amount;
  final String name;
  PokemonEvolutionRequirement({required this.amount, required this.name});
}
