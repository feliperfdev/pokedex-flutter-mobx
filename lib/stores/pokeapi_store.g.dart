// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeApiStore on _PokeApiStoreBase, Store {
  Computed<PokeAPI> _$pokeAPIComputed;

  @override
  PokeAPI get pokeAPI =>
      (_$pokeAPIComputed ??= Computed<PokeAPI>(() => super.pokeAPI,
              name: '_PokeApiStoreBase.pokeAPI'))
          .value;
  Computed<List<PokeAPIJohto>> _$apiJohtoComputed;

  @override
  List<PokeAPIJohto> get apiJohto =>
      (_$apiJohtoComputed ??= Computed<List<PokeAPIJohto>>(() => super.apiJohto,
              name: '_PokeApiStoreBase.apiJohto'))
          .value;

  final _$_pokeAPIAtom = Atom(name: '_PokeApiStoreBase._pokeAPI');

  @override
  PokeAPI get _pokeAPI {
    _$_pokeAPIAtom.reportRead();
    return super._pokeAPI;
  }

  @override
  set _pokeAPI(PokeAPI value) {
    _$_pokeAPIAtom.reportWrite(value, super._pokeAPI, () {
      super._pokeAPI = value;
    });
  }

  final _$_apiJohtoAtom = Atom(name: '_PokeApiStoreBase._apiJohto');

  @override
  List<PokeAPIJohto> get _apiJohto {
    _$_apiJohtoAtom.reportRead();
    return super._apiJohto;
  }

  @override
  set _apiJohto(List<PokeAPIJohto> value) {
    _$_apiJohtoAtom.reportWrite(value, super._apiJohto, () {
      super._apiJohto = value;
    });
  }

  final _$corPokemonAtom = Atom(name: '_PokeApiStoreBase.corPokemon');

  @override
  dynamic get corPokemon {
    _$corPokemonAtom.reportRead();
    return super.corPokemon;
  }

  @override
  set corPokemon(dynamic value) {
    _$corPokemonAtom.reportWrite(value, super.corPokemon, () {
      super.corPokemon = value;
    });
  }

  final _$_PokeApiStoreBaseActionController =
      ActionController(name: '_PokeApiStoreBase');

  @override
  dynamic fetchPokeAPI() {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction(
        name: '_PokeApiStoreBase.fetchPokeAPI');
    try {
      return super.fetchPokeAPI();
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getPokemon({int index}) {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction(
        name: '_PokeApiStoreBase.getPokemon');
    try {
      return super.getPokemon(index: index);
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget getImage({String numero}) {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction(
        name: '_PokeApiStoreBase.getImage');
    try {
      return super.getImage(numero: numero);
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fetchPokeAPIJohto() {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction(
        name: '_PokeApiStoreBase.fetchPokeAPIJohto');
    try {
      return super.fetchPokeAPIJohto();
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
corPokemon: ${corPokemon},
pokeAPI: ${pokeAPI},
apiJohto: ${apiJohto}
    ''';
  }
}
