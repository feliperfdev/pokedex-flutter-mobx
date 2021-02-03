import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex_flutter_mobx/models/pokeapi.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/PokeItem/pokeItem.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/appBar.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/darkPokeball.dart';
import 'package:pokedex_flutter_mobx/stores/pokeapi_store.dart';

class Kanto extends StatefulWidget {
  @override
  _KantoState createState() => _KantoState();
}

class _KantoState extends State<Kanto> {
  PokeApiStore pokeApiStore;

  int _currentPage = 0;
  PageController _pageController = PageController(viewportFraction: 0.8);

  List<PokeAPI> kantodex = [];
  @override
  void initState() {
    super.initState();
    pokeApiStore = PokeApiStore();
    print('Tentando dar fetch na API de Kanto...');
    pokeApiStore.fetchPokeAPIKanto();
    print('Ótimo!! Conseguimos dar o fetch!');
    _pageController.addListener(() {
      int next = _pageController.page.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            DarkPokeball(),
            Container(
              child: Column(
                children: [
                  PokeAppBar(),
                  Expanded(
                    child: Container(
                      child: Observer(
                        name: 'PokeAPIJohto',
                        builder: (_) {
                          List<PokeAPI> _kantoAPI = pokeApiStore.apiKanto;
                          kantodex = _kantoAPI;
                          return (_kantoAPI != null)
                              ? PageView.builder(
                                  controller: _pageController,
                                  itemCount: _kantoAPI.length,
                                  itemBuilder: (_, index) {
                                    bool actualPage = (index == _currentPage);
                                    int id = _kantoAPI[index].dexNr;
                                    String numero = id.toString();
                                    return PokeItem(
                                      nome: _kantoAPI[index].names.english,
                                      image: pokeApiStore.getImage(
                                        numero: numero,
                                      ),
                                      activePage: actualPage,
                                      color: pokeApiStore.corPokemon,
                                      pokeNum: numero,
                                      types: listTypes(index),
                                      stats: {
                                        'atk': _kantoAPI[index].stats.attack,
                                        'def': _kantoAPI[index].stats.defense,
                                        'sta': _kantoAPI[index].stats.stamina,
                                      },
                                    );
                                  },
                                )
                              : Center(
                                  child: CircularProgressIndicator(),
                                );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> listTypes(int index) {
    List<String> types = [];
    for (var i = 0; i < 1; i++) {
      types.add(kantodex[index].primaryType.names.english);
    }
    return types;
  }
}
