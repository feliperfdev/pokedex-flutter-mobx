import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_flutter_mobx/constants/api_consts.dart';
import 'package:pokedex_flutter_mobx/models/pokeApiSinnoh.dart';
part 'sinnohapi_store.g.dart';

class SinnohApiStore = _SinnohApiStoreBase with _$SinnohApiStore;

abstract class _SinnohApiStoreBase with Store {
  Dio dio = Dio();

  @observable
  List<PokeAPISinnoh> _apiSinnoh;

  @computed
  List<PokeAPISinnoh> get apiSinnoh => _apiSinnoh;

  //////////////////////////////////

  @action
  fetchPokeAPISinnoh() {
    _apiSinnoh = null;
    loadPokeAPISinnoh().then((value) {
      _apiSinnoh = value;
    });
  }

  Future<List<PokeAPISinnoh>> loadPokeAPISinnoh() async {
    final response = await dio.get(ConstsAPI.pokeAPISinnoh);
    final list = response.data as List;

    List<PokeAPISinnoh> _sinnohdex;
    _sinnohdex = [];
    try {
      for (var poke in list) {
        final pokemon = PokeAPISinnoh.fromJson(poke);
        _sinnohdex.add(pokemon);
      }
      print('Sucesso! Adicionou na lista!');
      print('Foram adicionados ${_sinnohdex.length} pokémon na lista!');
    } catch (e) {
      print('Response API error');
      return null;
    }
    print('Sucesso! Retornou!');
    return _sinnohdex;
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
