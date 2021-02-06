// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'johtoapi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$JohtoApiStore on _JohtoApiStoreBase, Store {
  Computed<List<PokeAPIJohto>> _$apiJohtoComputed;

  @override
  List<PokeAPIJohto> get apiJohto =>
      (_$apiJohtoComputed ??= Computed<List<PokeAPIJohto>>(() => super.apiJohto,
              name: '_JohtoApiStoreBase.apiJohto'))
          .value;

  final _$_apiJohtoAtom = Atom(name: '_JohtoApiStoreBase._apiJohto');

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

  final _$corPokemonAtom = Atom(name: '_JohtoApiStoreBase.corPokemon');

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

  final _$_JohtoApiStoreBaseActionController =
      ActionController(name: '_JohtoApiStoreBase');

  @override
  dynamic fetchPokeAPIJohto() {
    final _$actionInfo = _$_JohtoApiStoreBaseActionController.startAction(
        name: '_JohtoApiStoreBase.fetchPokeAPIJohto');
    try {
      return super.fetchPokeAPIJohto();
    } finally {
      _$_JohtoApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget getImage({String numero}) {
    final _$actionInfo = _$_JohtoApiStoreBaseActionController.startAction(
        name: '_JohtoApiStoreBase.getImage');
    try {
      return super.getImage(numero: numero);
    } finally {
      _$_JohtoApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
corPokemon: ${corPokemon},
apiJohto: ${apiJohto}
    ''';
  }
}
