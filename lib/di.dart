import 'package:get_it/get_it.dart';
import 'package:pokedex/features/pokemon/data/repository/pokemon_repository_impl.dart';
import 'package:pokedex/features/pokemon/data/source/graphql_source.dart';
import 'package:pokedex/features/pokemon/domain/repository/pokemon_repository.dart';
import 'package:pokedex/features/pokemon/domain/usecase/get_pokemon_detail_usecase.dart';
import 'package:pokedex/features/pokemon/domain/usecase/get_pokemons_usecase.dart';

final sl = GetIt.instance;

/// This function is used to initialize injection of all the dependencies from separate layer
void setupInjection() {
  // GraphQl Data Source
  sl.registerLazySingleton<GraphQlSource>(() => GraphQlSource());

  // Pokemon Repository
  sl.registerLazySingleton<PokemonRepository>(
      () => PokemonRepositoryImpl(sl()));

  // UseCases
  sl.registerLazySingleton<GetPokemonUsecase>(() => GetPokemonUsecase(sl()));
  sl.registerLazySingleton<GetPokemonsUseCase>(() => GetPokemonsUseCase(sl()));
}
