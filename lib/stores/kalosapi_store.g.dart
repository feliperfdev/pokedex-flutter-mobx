// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kalosapi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$KalosApiStore on _KalosApiStoreBase, Store {
  Computed<List<PokeAPIKalos>> _$apiKalosComputed;

  @override
  List<PokeAPIKalos> get apiKalos =>
      (_$apiKalosComputed ??= Computed<List<PokeAPIKalos>>(() => super.apiKalos,
              name: '_KalosApiStoreBase.apiKalos'))
          .value;

  final _$_apiKalosAtom = Atom(name: '_KalosApiStoreBase._apiKalos');

  @override
  List<PokeAPIKalos> get _apiKalos {
    _$_apiKalosAtom.reportRead();
    return super._apiKalos;
  }

  @override
  set _apiKalos(List<PokeAPIKalos> value) {
    _$_apiKalosAtom.reportWrite(value, super._apiKalos, () {
      super._apiKalos = value;
    });
  }

  final _$corPokemonAtom = Atom(name: '_KalosApiStoreBase.corPokemon');

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

  final _$_KalosApiStoreBaseActionController =
      ActionController(name: '_KalosApiStoreBase');

  @override
  dynamic fetchPokeAPIKalos() {
    final _$actionInfo = _$_KalosApiStoreBaseActionController.startAction(
        name: '_KalosApiStoreBase.fetchPokeAPIKalos');
    try {
      return super.fetchPokeAPIKalos();
    } finally {
      _$_KalosApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget getImage({String numero}) {
    final _$actionInfo = _$_KalosApiStoreBaseActionController.startAction(
        name: '_KalosApiStoreBase.getImage');
    try {
      return super.getImage(numero: numero);
    } finally {
      _$_KalosApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
corPokemon: ${corPokemon},
apiKalos: ${apiKalos}
    ''';
  }
}
