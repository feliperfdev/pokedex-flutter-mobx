import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_flutter_mobx/constants/api_consts.dart';
import 'package:pokedex_flutter_mobx/models/pokeApiUnova.dart';
part 'unovaapi_store.g.dart';

class UnovaApiStore = _UnovaApiStoreBase with _$UnovaApiStore;

abstract class _UnovaApiStoreBase with Store {
  Dio dio = Dio();

  @observable
  List<PokeAPIUnova> _apiUnova;

  @computed
  List<PokeAPIUnova> get apiUnova => _apiUnova;

  //////////////////////////////////

  @action
  fetchPokeAPIUnova() {
    _apiUnova = null;
    loadPokeAPIUnova().then((value) {
      _apiUnova = value;
    });
  }

  Future<List<PokeAPIUnova>> loadPokeAPIUnova() async {
    final response = await dio.get(ConstsAPI.pokeAPIUnova);
    final list = response.data as List;

    List<PokeAPIUnova> _unovadex;
    _unovadex = [];
    try {
      for (var poke in list) {
        final pokemon = PokeAPIUnova.fromJson(poke);
        _unovadex.add(pokemon);
      }
      print('Sucesso! Adicionou na lista!');
      print('Foram adicionados ${_unovadex.length} pokémon na lista!');
    } catch (e) {
      print('Response API error');
      return null;
    }
    print('Sucesso! Retornou!');
    return _unovadex;
  }

  @observable
  dynamic corPokemon;

  @action
  Widget getImage({String numero}) {
    return CachedNetworkImage(
      placeholder: (context, url) => new Container(
        color: Colors.transparent,
      ),
      imageUrl:
          'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$numero.png',
    );
  }
}
