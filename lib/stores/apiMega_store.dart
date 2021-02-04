import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_flutter_mobx/constants/api_consts.dart';
import 'package:pokedex_flutter_mobx/models/megasApi.dart';
part 'apiMega_store.g.dart';

class MegaApiStore = _MegaApiStoreBase with _$MegaApiStore;

abstract class _MegaApiStoreBase with Store {
// MEGAS

  Dio dio = Dio();

  @observable
  List<PokeMegaAPI> _apiMega;

  @computed
  List<PokeMegaAPI> get apiMega => _apiMega;

  //////////////////////////////////

  @action
  fetchPokeMegaAPI() {
    _apiMega = null;
    loadPokeMegaAPI().then((value) {
      _apiMega = value;
    });
  }

  Future<List<PokeMegaAPI>> loadPokeMegaAPI() async {
    final response = await dio.get(ConstsAPI.pokeAPIMega);
    final list = response.data as List;

    List<PokeMegaAPI> _megadex;
    _megadex = [];
    try {
      for (var poke in list) {
        final pokemon = PokeMegaAPI.fromJson(poke);
        _megadex.add(pokemon);
      }
      print('Sucesso! Adicionou na lista!');
      print('Foram adicionados ${_megadex.length} pokémon na lista!');
    } catch (e) {
      print('Response API error');
      return null;
    }
    print('Sucesso! Retornou!');
    return _megadex;
  }

  @observable
  dynamic corPokemon;

  @action
  Widget getImage({String numero}) {
    return CachedNetworkImage(
        placeholder: (context, url) => new Container(
              color: Colors.transparent,
            ),
        imageUrl: numero.length < 2
            ? 'https://raw.githubusercontent.com/PokeMiners/pogo_assets/master/Images/Pokemon/pokemon_icon_00${numero}_51.png'
            : numero.length < 3
                ? 'https://raw.githubusercontent.com/PokeMiners/pogo_assets/master/Images/Pokemon/pokemon_icon_0${numero}_51.png'
                : 'https://raw.githubusercontent.com/PokeMiners/pogo_assets/master/Images/Pokemon/pokemon_icon_${numero}_51.png');
  }
}
