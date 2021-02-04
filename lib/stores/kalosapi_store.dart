import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_flutter_mobx/constants/api_consts.dart';
import 'package:pokedex_flutter_mobx/models/pokeApiKalos.dart';
part 'kalosapi_store.g.dart';

class KalosApiStore = _KalosApiStoreBase with _$KalosApiStore;

abstract class _KalosApiStoreBase with Store {
  Dio dio = Dio();

  @observable
  List<PokeAPIKalos> _apiKalos;

  @computed
  List<PokeAPIKalos> get apiKalos => _apiKalos;

  //////////////////////////////////

  @action
  fetchPokeAPIKalos() {
    _apiKalos = null;
    loadPokeAPIKalos().then((value) {
      _apiKalos = value;
    });
  }

  Future<List<PokeAPIKalos>> loadPokeAPIKalos() async {
    final response = await dio.get(ConstsAPI.pokeAPIKalos);
    final list = response.data as List;

    List<PokeAPIKalos> _kalosdex;
    _kalosdex = [];
    try {
      for (var poke in list) {
        final pokemon = PokeAPIKalos.fromJson(poke);
        _kalosdex.add(pokemon);
      }
      print('Sucesso! Adicionou na lista!');
      print('Foram adicionados ${_kalosdex.length} pokémon na lista!');
    } catch (e) {
      print('Response API error');
      return null;
    }
    print('Sucesso! Retornou!');
    return _kalosdex;
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
