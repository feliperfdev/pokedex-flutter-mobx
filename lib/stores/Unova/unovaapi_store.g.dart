// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unovaapi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UnovaApiStore on _UnovaApiStoreBase, Store {
  Computed<List<PokeAPIUnova>> _$apiUnovaComputed;

  @override
  List<PokeAPIUnova> get apiUnova =>
      (_$apiUnovaComputed ??= Computed<List<PokeAPIUnova>>(() => super.apiUnova,
              name: '_UnovaApiStoreBase.apiUnova'))
          .value;

  final _$_apiUnovaAtom = Atom(name: '_UnovaApiStoreBase._apiUnova');

  @override
  List<PokeAPIUnova> get _apiUnova {
    _$_apiUnovaAtom.reportRead();
    return super._apiUnova;
  }

  @override
  set _apiUnova(List<PokeAPIUnova> value) {
    _$_apiUnovaAtom.reportWrite(value, super._apiUnova, () {
      super._apiUnova = value;
    });
  }

  final _$corPokemonAtom = Atom(name: '_UnovaApiStoreBase.corPokemon');

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

  final _$_UnovaApiStoreBaseActionController =
      ActionController(name: '_UnovaApiStoreBase');

  @override
  dynamic fetchPokeAPIUnova() {
    final _$actionInfo = _$_UnovaApiStoreBaseActionController.startAction(
        name: '_UnovaApiStoreBase.fetchPokeAPIUnova');
    try {
      return super.fetchPokeAPIUnova();
    } finally {
      _$_UnovaApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget getImage({String numero}) {
    final _$actionInfo = _$_UnovaApiStoreBaseActionController.startAction(
        name: '_UnovaApiStoreBase.getImage');
    try {
      return super.getImage(numero: numero);
    } finally {
      _$_UnovaApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
corPokemon: ${corPokemon},
apiUnova: ${apiUnova}
    ''';
  }
}
