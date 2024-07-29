import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/features/pokemon/data/model/pokemons_model.dart';
import 'package:pokedex/features/pokemon/domain/entity/pokemon_detail.dart';

part 'pokemon_detail_model.freezed.dart';
part 'pokemon_detail_model.g.dart';

// @JsonSerializable(converters: [
//   PokemonAttackConverter(),
//   PokemonDimensionConverter(),
//   PokemonEvolutionRequirementConverter()
// ])
@freezed
class PokemonDetailModel extends PokemonDetail with _$PokemonDetailModel {
  factory PokemonDetailModel({
    required String id,
    required String name,
    required String classification,
    required String image,
    required List<String> types,
    @PokemonDimensionConverter() required PokemonDimension weight,
    @PokemonDimensionConverter() required PokemonDimension height,
    required List<String> resistant,
    @PokemonAttackConverter() required PokemonAttack attacks,
    required List<String> weaknesses,
    required double fleeRate,
    required int maxCP,
    required List<PokemonsModel>? evolutions,
    @PokemonEvolutionRequirementConverter()
    required PokemonEvolutionRequirement? evolutionRequirements,
    required int maxHP,
  }) = _PokemonDetailModel;

  factory PokemonDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailModelFromJson(json);
}

class PokemonDimensionConverter
    extends JsonConverter<PokemonDimension, Map<String, dynamic>> {
  const PokemonDimensionConverter();
  @override
  PokemonDimension fromJson(Map<String, dynamic> json) {
    return PokemonDimension(
      minimum: json["minimum"] as String,
      maximum: json["maximum"] as String,
    );
  }

  @override
  Map<String, dynamic> toJson(PokemonDimension object) {
    return {
      "minimum": object.minimum,
      "maximum": object.maximum,
    };
  }
}

class PokemonAttackConverter
    extends JsonConverter<PokemonAttack, Map<String, dynamic>> {
  const PokemonAttackConverter();

  @override
  PokemonAttack fromJson(Map<String, dynamic> json) {
    final fast = (json["fast"] as List<dynamic>)
        .map((attack) => Attack(
            name: attack["name"],
            type: attack["type"],
            damage: attack["damage"]))
        .toList();
    final special = (json["special"] as List<dynamic>)
        .map((attack) => Attack(
            name: attack["name"],
            type: attack["type"],
            damage: attack["damage"]))
        .toList();
    return PokemonAttack(fast: fast, special: special);
  }

  @override
  Map<String, dynamic> toJson(PokemonAttack object) {
    return {
      "fast": jsonEncode(object.fast),
      "special": jsonEncode(object.special),
    };
  }
}

class PokemonEvolutionRequirementConverter
    extends JsonConverter<PokemonEvolutionRequirement, Map<String, dynamic>> {
  const PokemonEvolutionRequirementConverter();

  @override
  PokemonEvolutionRequirement fromJson(Map<String, dynamic> json) {
    return PokemonEvolutionRequirement(
        amount: json["amount"] as int, name: json["name"] as String);
  }

  @override
  Map<String, dynamic> toJson(PokemonEvolutionRequirement object) {
    return {
      "amount": object.amount,
      "name": object.name,
    };
  }
}
