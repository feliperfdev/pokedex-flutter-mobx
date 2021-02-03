import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_flutter_mobx/constants/api_consts.dart';
import 'package:pokedex_flutter_mobx/models/pokeApiJohto.dart';
import 'package:pokedex_flutter_mobx/models/pokeapi.dart';
part 'pokeapi_store.g.dart';

class PokeApiStore = _PokeApiStoreBase with _$PokeApiStore;

abstract class _PokeApiStoreBase with Store {
  final Dio dio = Dio();

  // Kanto ==========================
  @observable
  PokeAPI _pokeAPI;

  @computed
  PokeAPI get pokeAPI => _pokeAPI;
// =====================================

// Johto =====================================
  @observable
  List<PokeAPIJohto> _apiJohto;

  @computed
  List<PokeAPIJohto> get apiJohto => _apiJohto;
// ==========================================

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
    } catch (e) {
      print('Response API error');
      return null;
    }
    return _johtodex;
  }
}
////////////////////////////////////////////////////////////////////
