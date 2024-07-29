import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/config/navigator_key.dart';
import 'package:pokedex/core/notifier_state.dart';
import 'package:pokedex/di.dart';
import 'package:pokedex/features/pokemon/domain/entity/pokemons.dart';
import 'package:pokedex/features/pokemon/domain/usecase/get_pokemons_usecase.dart';

final allPokemonProvider = ChangeNotifierProvider((ref) {
  final context = ref.watch(routeNavigatorKeyProvider).currentContext;
  return AllPokemonNotifier(context!);
});

class AllPokemonNotifier extends ChangeNotifier {
  BuildContext context;

  AllPokemonNotifier(this.context) {
    fetchPokemon();
  }

  NotifierState _state = NotifierState.initial;
  NotifierState get state => _state;
  void _setState(NotifierState state) {
    _state = state;
    notifyListeners();
  }

  bool _loading = false;
  bool get loading => _loading;
  void _setLoading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  int _fetchValue = 20;
  int get fetchValue => _fetchValue;
  void _addFetchValue() {
    _fetchValue += 10;
    notifyListeners();
  }

  List<Pokemons> _data = [];
  List<Pokemons> get data => _data;
  void _setData(List<Pokemons> data) {
    _data.addAll(data);
    _setState(NotifierState.loaded);
    _addFetchValue();
    notifyListeners();
  }

  void reload() {
    _data = [];
    _setState(NotifierState.initial);
    _fetchValue = 20;
    fetchPokemon();
  }

  void fetchPokemon() async {
    _setLoading(true);

    await sl<GetPokemonsUseCase>().call(_fetchValue).then(
      (res) {
        res.fold((left) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(left.getMessage())));
        }, (right) {
          _setData(right.sublist(_data.length));
        });
      },
    );

    _setLoading(false);
  }
}
