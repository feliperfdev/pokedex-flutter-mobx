import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_flutter_mobx/constants/api_consts.dart';
import 'package:pokedex_flutter_mobx/models/pokeapi.dart';
part 'pokeapi_store.g.dart';

class PokeApiStore = _PokeApiStoreBase with _$PokeApiStore;

abstract class _PokeApiStoreBase with Store {
  final Dio dio = Dio();

  // Kanto ==========================
  @observable
  List<PokeAPI> _apiKanto;

  @computed
  List<PokeAPI> get apiKanto => _apiKanto;
// =====================================

  @observable
  dynamic corPokemon;

  @action
  Widget getImage({String numero}) {
    return CachedNetworkImage(
      placeholder: (context, url) => new Container(
        color: Colors.transparent,
      ),
      imageUrl: numero.length < 2
          ? 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/00$numero.png'
          : numero.length < 3
              ? 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/0$numero.png'
              : 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$numero.png',
    );
  }

////////////////////// KANTO ////////////////////////
  @action
  fetchPokeAPIKanto() {
    _apiKanto = null;
    loadPokeAPIKanto().then((value) {
      _apiKanto = value;
    });
  }

  Future<List<PokeAPI>> loadPokeAPIKanto() async {
    final response = await dio.get(ConstsAPI.pokeAPIKanto);
    final list = response.data as List;

    List<PokeAPI> _kantodex;
    _kantodex = [];
    try {
      // if (response.statusCode == 200) print(response.statusCode.toString());
      for (var poke in list) {
        final pokemon = PokeAPI.fromJson(poke);
        _kantodex.add(pokemon);
      }
      print('Sucesso! Adicionou na lista!');
      print('Foram adicionados ${_kantodex.length} pokémon na lista!');
    } catch (e) {
      print('Response API error');
      return null;
    }
    print('Sucesso! Retornou!');
    return _kantodex;
  }
}
