import 'package:pokedex_flutter_mobx/stores/Hoenn/hoennapi_store.dart';
import 'package:pokedex_flutter_mobx/stores/Johto/johtoapi_store.dart';
import 'package:pokedex_flutter_mobx/stores/Kalos/kalosapi_store.dart';
import 'package:pokedex_flutter_mobx/stores/Kanto/pokeapi_store.dart';
import 'package:pokedex_flutter_mobx/stores/Mega/apiMega_store.dart';
import 'package:pokedex_flutter_mobx/stores/Sinnoh/sinnohapi_store.dart';
import 'package:pokedex_flutter_mobx/stores/Unova/unovaapi_store.dart';

MegaApiStore megaApiStore = MegaApiStore();
PokeApiStore pokeApiStore = PokeApiStore();
JohtoApiStore johtoApiStore = JohtoApiStore();
HoennApiStore hoennApiStore = HoennApiStore();
SinnohApiStore sinnohApiStore = SinnohApiStore();
UnovaApiStore unovaApiStore = UnovaApiStore();
KalosApiStore kalosApiStore = KalosApiStore();

fetchAllPokemonAPIs() {
  print('Tentando dar fetch nas APIs do app...');
  Future.delayed(Duration(milliseconds: 100));
  megaApiStore.fetchPokeMegaAPI();
  ///////////////////////////////////////////////////
  pokeApiStore.fetchPokeAPIKanto();
  Future.delayed(Duration(milliseconds: 100));
  ///////////////////////////////////////////////////
  johtoApiStore.fetchPokeAPIJohto();
  Future.delayed(Duration(milliseconds: 100));
  ///////////////////////////////////////////////////
  hoennApiStore.fetchPokeAPIHoenn();
  Future.delayed(Duration(milliseconds: 100));
  ///////////////////////////////////////////////////
  sinnohApiStore.fetchPokeAPISinnoh();
  Future.delayed(Duration(milliseconds: 100));
  ///////////////////////////////////////////////////
  unovaApiStore.fetchPokeAPIUnova();
  Future.delayed(Duration(milliseconds: 100));
  ///////////////////////////////////////////////////
  kalosApiStore.fetchPokeAPIKalos();
  print('Ótimo!! Conseguimos dar o fetch nas APIs!');
}
