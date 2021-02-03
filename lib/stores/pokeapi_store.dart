import 'dart:convert';
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
  @observable
  PokeAPI _pokeAPI;

  @computed
  PokeAPI get pokeAPI => _pokeAPI;

  @observable
  dynamic corPokemon;

  @action
  fetchPokeAPI() {
    _pokeAPI = null;
    loadPokeAPIKanto().then((pokelist) {
      _pokeAPI = pokelist;
    });
  }

  @action
  getPokemon({int index}) {
    return _pokeAPI.pokemon[index];
  }

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

  Dio dio = Dio();
  Future<PokeAPI> loadPokeAPIKanto() async {
    try {
      final response = await dio.get(ConstsAPI.pokeAPIKanto);
      var decodedJson = jsonDecode(response.data);
      return PokeAPI.fromJson(decodedJson);
    } catch (e) {
      print('Erro ao carregar API');
      return null;
    }
  }

////////////////////// JOHTO ////////////////////////
  @action
  fetchPokeAPIJohto() {
    _pokeAPI = null;
    loadPokeAPIJohto().then((pokelist) {
      _pokeAPI = pokelist;
    });
  }

  Future<PokeAPI> loadPokeAPIJohto() async {
    try {
      final response = await dio.get(ConstsAPI.pokeAPIJohto);
      var decodedJson = jsonDecode(response.data);
      return PokeAPI.fromJson(decodedJson);
    } catch (e) {
      print('Erro ao carregar API');
      return null;
    }
  }
}
////////////////////////////////////////////////////////////////////
