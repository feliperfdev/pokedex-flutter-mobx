// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sinnohapi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SinnohApiStore on _SinnohApiStoreBase, Store {
  Computed<List<PokeAPISinnoh>> _$apiSinnohComputed;

  @override
  List<PokeAPISinnoh> get apiSinnoh => (_$apiSinnohComputed ??=
          Computed<List<PokeAPISinnoh>>(() => super.apiSinnoh,
              name: '_SinnohApiStoreBase.apiSinnoh'))
      .value;

  final _$_apiSinnohAtom = Atom(name: '_SinnohApiStoreBase._apiSinnoh');

  @override
  List<PokeAPISinnoh> get _apiSinnoh {
    _$_apiSinnohAtom.reportRead();
    return super._apiSinnoh;
  }

  @override
  set _apiSinnoh(List<PokeAPISinnoh> value) {
    _$_apiSinnohAtom.reportWrite(value, super._apiSinnoh, () {
      super._apiSinnoh = value;
    });
  }

  final _$corPokemonAtom = Atom(name: '_SinnohApiStoreBase.corPokemon');

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

  final _$_SinnohApiStoreBaseActionController =
      ActionController(name: '_SinnohApiStoreBase');

  @override
  dynamic fetchPokeAPISinnoh() {
    final _$actionInfo = _$_SinnohApiStoreBaseActionController.startAction(
        name: '_SinnohApiStoreBase.fetchPokeAPISinnoh');
    try {
      return super.fetchPokeAPISinnoh();
    } finally {
      _$_SinnohApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget getImage({String numero}) {
    final _$actionInfo = _$_SinnohApiStoreBaseActionController.startAction(
        name: '_SinnohApiStoreBase.getImage');
    try {
      return super.getImage(numero: numero);
    } finally {
      _$_SinnohApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
corPokemon: ${corPokemon},
apiSinnoh: ${apiSinnoh}
    ''';
  }
}
