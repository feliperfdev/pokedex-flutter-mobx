// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiMega_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MegaApiStore on _MegaApiStoreBase, Store {
  Computed<List<PokeMegaAPI>> _$apiMegaComputed;

  @override
  List<PokeMegaAPI> get apiMega =>
      (_$apiMegaComputed ??= Computed<List<PokeMegaAPI>>(() => super.apiMega,
              name: '_MegaApiStoreBase.apiMega'))
          .value;

  final _$_apiMegaAtom = Atom(name: '_MegaApiStoreBase._apiMega');

  @override
  List<PokeMegaAPI> get _apiMega {
    _$_apiMegaAtom.reportRead();
    return super._apiMega;
  }

  @override
  set _apiMega(List<PokeMegaAPI> value) {
    _$_apiMegaAtom.reportWrite(value, super._apiMega, () {
      super._apiMega = value;
    });
  }

  final _$corPokemonAtom = Atom(name: '_MegaApiStoreBase.corPokemon');

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

  final _$_MegaApiStoreBaseActionController =
      ActionController(name: '_MegaApiStoreBase');

  @override
  dynamic fetchPokeMegaAPI() {
    final _$actionInfo = _$_MegaApiStoreBaseActionController.startAction(
        name: '_MegaApiStoreBase.fetchPokeMegaAPI');
    try {
      return super.fetchPokeMegaAPI();
    } finally {
      _$_MegaApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget getImage({String numero}) {
    final _$actionInfo = _$_MegaApiStoreBaseActionController.startAction(
        name: '_MegaApiStoreBase.getImage');
    try {
      return super.getImage(numero: numero);
    } finally {
      _$_MegaApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
corPokemon: ${corPokemon},
apiMega: ${apiMega}
    ''';
  }
}
