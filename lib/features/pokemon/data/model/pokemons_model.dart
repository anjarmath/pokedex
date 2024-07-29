import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/features/pokemon/domain/entity/pokemons.dart';

part 'pokemons_model.freezed.dart';
part 'pokemons_model.g.dart';

@freezed
class PokemonsModel extends Pokemons with _$PokemonsModel {
  factory PokemonsModel({
    required String id,
    required String name,
    required String image,
    required String classification,
  }) = _PokemonsModel;

  factory PokemonsModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonsModelFromJson(json);
}
