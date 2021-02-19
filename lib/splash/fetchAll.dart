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
  megaApiStore.fetchPokeMegaAPI();
  pokeApiStore.fetchPokeAPIKanto();
  johtoApiStore.fetchPokeAPIJohto();
  hoennApiStore.fetchPokeAPIHoenn();
  sinnohApiStore.fetchPokeAPISinnoh();
  unovaApiStore.fetchPokeAPIUnova();
  kalosApiStore.fetchPokeAPIKalos();
  Future.delayed(Duration(milliseconds: 500));
  print('Ótimo!! Conseguimos dar o fetch nas APIs!');
}
