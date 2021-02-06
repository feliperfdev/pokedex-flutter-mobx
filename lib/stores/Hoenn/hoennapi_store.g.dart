// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hoennapi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HoennApiStore on _HoennApiStoreBase, Store {
  Computed<List<PokeAPIHoenn>> _$apiHoennComputed;

  @override
  List<PokeAPIHoenn> get apiHoenn =>
      (_$apiHoennComputed ??= Computed<List<PokeAPIHoenn>>(() => super.apiHoenn,
              name: '_HoennApiStoreBase.apiHoenn'))
          .value;

  final _$_apiHoennAtom = Atom(name: '_HoennApiStoreBase._apiHoenn');

  @override
  List<PokeAPIHoenn> get _apiHoenn {
    _$_apiHoennAtom.reportRead();
    return super._apiHoenn;
  }

  @override
  set _apiHoenn(List<PokeAPIHoenn> value) {
    _$_apiHoennAtom.reportWrite(value, super._apiHoenn, () {
      super._apiHoenn = value;
    });
  }

  final _$corPokemonAtom = Atom(name: '_HoennApiStoreBase.corPokemon');

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

  final _$_HoennApiStoreBaseActionController =
      ActionController(name: '_HoennApiStoreBase');

  @override
  dynamic fetchPokeAPIHoenn() {
    final _$actionInfo = _$_HoennApiStoreBaseActionController.startAction(
        name: '_HoennApiStoreBase.fetchPokeAPIHoenn');
    try {
      return super.fetchPokeAPIHoenn();
    } finally {
      _$_HoennApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget getImage({String numero}) {
    final _$actionInfo = _$_HoennApiStoreBaseActionController.startAction(
        name: '_HoennApiStoreBase.getImage');
    try {
      return super.getImage(numero: numero);
    } finally {
      _$_HoennApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
corPokemon: ${corPokemon},
apiHoenn: ${apiHoenn}
    ''';
  }
}
