import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_flutter_mobx/constants/api_consts.dart';
import 'package:pokedex_flutter_mobx/models/pokeApiJohto.dart';
part 'johtoapi_store.g.dart';

class JohtoApiStore = _JohtoApiStoreBase with _$JohtoApiStore;

abstract class _JohtoApiStoreBase with Store {
  Dio dio = Dio();

// Johto =====================================
  @observable
  List<PokeAPIJohto> _apiJohto;

  @computed
  List<PokeAPIJohto> get apiJohto => _apiJohto;
// ==========================================

////////////////////// JOHTO ////////////////////////
  @action
  fetchPokeAPIJohto() {
    _apiJohto = null;
    loadPokeAPIJohto().then((value) {
      _apiJohto = value;
    });
  }

  Future<List<PokeAPIJohto>> loadPokeAPIJohto() async {
    final response = await dio.get(ConstsAPI.pokeAPIJohto);
    final list = response.data as List;

    List<PokeAPIJohto> _johtodex;
    _johtodex = [];
    try {
      // if (response.statusCode == 200) print(response.statusCode.toString());
      for (var poke in list) {
        final pokemon = PokeAPIJohto.fromJson(poke);
        _johtodex.add(pokemon);
      }
      print('Sucesso! Adicionou na lista!');
      print('Foram adicionados ${_johtodex.length} pokémon na lista!');
    } catch (e) {
      print('Response API error');
      return null;
    }
    print('Sucesso! Retornou!');
    return _johtodex;
  }

////////////////////////////////////////////////////////////////////

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
