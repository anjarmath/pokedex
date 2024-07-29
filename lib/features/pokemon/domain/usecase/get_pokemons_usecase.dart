import 'package:pokedex/core/datastate.dart';
import 'package:pokedex/features/pokemon/domain/entity/pokemons.dart';
import 'package:pokedex/features/pokemon/domain/repository/pokemon_repository.dart';

class GetPokemonsUseCase {
  final PokemonRepository _repository;
  GetPokemonsUseCase(this._repository);

  DataState<List<Pokemons>> call(int first) async {
    return await _repository.getListPokemons(first);
  }
}
