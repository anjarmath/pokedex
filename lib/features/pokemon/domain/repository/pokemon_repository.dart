import 'package:pokedex/core/datastate.dart';
import 'package:pokedex/features/pokemon/domain/entity/pokemon_detail.dart';
import 'package:pokedex/features/pokemon/domain/entity/pokemons.dart';

abstract class PokemonRepository {
  DataState<List<Pokemons>> getListPokemons(int first);
  DataState<PokemonDetail> getPokemonDetail(String id);
}
