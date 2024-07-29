import 'package:either_dart/either.dart';
import 'package:pokedex/core/datastate.dart';
import 'package:pokedex/core/failure.dart';
import 'package:pokedex/features/pokemon/data/model/pokemon_detail_model.dart';
import 'package:pokedex/features/pokemon/data/model/pokemons_model.dart';
import 'package:pokedex/features/pokemon/data/source/graphql_source.dart';
import 'package:pokedex/features/pokemon/domain/repository/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final GraphQlSource _source;
  PokemonRepositoryImpl(this._source);

  @override
  DataState<List<PokemonsModel>> getListPokemons(int first) async {
    final query = {
      "query": '''
  {
  pokemons(first: $first){
    id,
    name,
    classification,
    image
  }
  }
'''
    };

    final res = await _source.query(query);
    return res.fold((l) {
      return Left(l);
    }, (r) {
      if (r.statusCode != 200) {
        return Left(
          Failure(
            statusCode: r.statusCode,
            message: r.data["message"] ?? "Unknown Error",
          ),
        );
      } else {
        List<dynamic> data = r.data["pokemons"];
        List<PokemonsModel> resList =
            data.map((json) => PokemonsModel.fromJson(json)).toList();
        return Right(resList);
      }
    });
  }

  @override
  DataState<PokemonDetailModel> getPokemonDetail(String id) async {
    final query = {
      "query": '''
    {
    pokemon(id:"$id") {
    id
    name
    classification
    image
    types
    weight {
      minimum
      maximum
    }
    height {
      minimum
      maximum
    }
    resistant
    attacks {
      fast {
        name
        type
        damage
      }
      special {
        name
        type
        damage
      }
    }
    weaknesses
    fleeRate
    maxCP
    evolutions {
      id
      name
      classification
      image
    }
    evolutionRequirements {
      amount
      name
    }
    maxHP
  }
  }
'''
    };

    final res = await _source.query(query);
    return res.fold((l) {
      return Left(l);
    }, (r) {
      if (r.statusCode != 200) {
        return Left(
          Failure(
            statusCode: r.statusCode,
            message: r.data["message"] ?? "Unknown Error",
          ),
        );
      } else {
        return Right(PokemonDetailModel.fromJson(r.data["pokemon"]));
      }
    });
  }
}
