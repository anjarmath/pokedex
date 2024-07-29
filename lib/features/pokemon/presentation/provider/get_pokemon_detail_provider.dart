import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/config/navigator_key.dart';
import 'package:pokedex/core/notifier_state.dart';
import 'package:pokedex/di.dart';
import 'package:pokedex/features/pokemon/domain/entity/pokemon_detail.dart';
import 'package:pokedex/features/pokemon/domain/usecase/get_pokemon_detail_usecase.dart';

final pokemonDetailNotifierProvider =
    ChangeNotifierProvider.family((ref, String id) {
  final context = ref.watch(routeNavigatorKeyProvider).currentContext;
  return PokemonDetailNotifier(context!, id);
});

class PokemonDetailNotifier extends ChangeNotifier {
  BuildContext context;
  String id;
  PokemonDetailNotifier(this.context, this.id) {
    getDetail();
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

  PokemonDetail? _data;
  PokemonDetail? get data => _data;
  void _setData(PokemonDetail data) {
    _data = data;
    _setState(NotifierState.loaded);
    notifyListeners();
  }

  void getDetail() async {
    _setLoading(true);

    await sl<GetPokemonUsecase>().call(id).then((res) {
      res.fold((left) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(left.getMessage())));
      }, (right) {
        _setData(right);
      });
    });

    _setLoading(false);
  }
}
