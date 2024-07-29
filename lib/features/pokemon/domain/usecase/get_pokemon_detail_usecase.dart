import 'package:pokedex/core/datastate.dart';
import 'package:pokedex/features/pokemon/domain/repository/pokemon_repository.dart';

import '../entity/pokemon_detail.dart';

class GetPokemonUsecase {
  final PokemonRepository _repository;
  GetPokemonUsecase(this._repository);

  DataState<PokemonDetail> call(String id) async {
    return await _repository.getPokemonDetail(id);
  }
}
