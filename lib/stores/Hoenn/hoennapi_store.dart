import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_flutter_mobx/constants/api_consts.dart';
import 'package:pokedex_flutter_mobx/models/pokeApiHoenn.dart';
part 'hoennapi_store.g.dart';

class HoennApiStore = _HoennApiStoreBase with _$HoennApiStore;

abstract class _HoennApiStoreBase with Store {
  Dio dio = Dio();

  // Hoenn =====================================
  @observable
  List<PokeAPIHoenn> _apiHoenn;

  @computed
  List<PokeAPIHoenn> get apiHoenn => _apiHoenn;
// ==========================================

////////////////////// HOENN ////////////////////////
  @action
  fetchPokeAPIHoenn() {
    _apiHoenn = null;
    loadPokeAPIHoenn().then((value) {
      _apiHoenn = value;
    });
  }

  Future<List<PokeAPIHoenn>> loadPokeAPIHoenn() async {
    final response = await dio.get(ConstsAPI.pokeAPIHoeen);
    final list = response.data as List;

    List<PokeAPIHoenn> _hoenndex;
    _hoenndex = [];
    try {
      for (var poke in list) {
        final pokemon = PokeAPIHoenn.fromJson(poke);
        _hoenndex.add(pokemon);
      }
      print('Sucesso! Adicionou na lista!');
      print('Foram adicionados ${_hoenndex.length} pokémon na lista!');
    } catch (e) {
      print('Response API error');
      return null;
    }
    print('Sucesso! Retornou!');
    return _hoenndex;
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
////////////////////////////////////////////////////////////////////
