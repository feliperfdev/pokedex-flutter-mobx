import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex_flutter_mobx/models/pokeApiKalos.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/PokeItem/pokeItem.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/appBar.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/darkPokeball.dart';
import 'package:pokedex_flutter_mobx/stores/kalosapi_store.dart';

class Kalos extends StatefulWidget {
  @override
  _KalosState createState() => _KalosState();
}

class _KalosState extends State<Kalos> {
  KalosApiStore kalosApiStore;

  int _currentPage = 0;
  PageController _pageController = PageController(viewportFraction: 0.8);

  List<PokeAPIKalos> kalosdex = [];
  @override
  void initState() {
    super.initState();
    kalosApiStore = KalosApiStore();
    print('Tentando dar fetch na API de Kalos...');
    kalosApiStore.fetchPokeAPIKalos();
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
                        name: 'PokeAPIKalos',
                        builder: (_) {
                          List<PokeAPIKalos> _kalosAPI = [];
                          _kalosAPI = kalosApiStore.apiKalos;
                          kalosdex = _kalosAPI;
                          return (_kalosAPI != null)
                              ? PageView.builder(
                                  controller: _pageController,
                                  itemCount: _kalosAPI.length,
                                  itemBuilder: (_, index) {
                                    bool actualPage = (index == _currentPage);
                                    int id = _kalosAPI[index].dexNr;
                                    String numero = id.toString();
                                    return PokeItem(
                                      nome: _kalosAPI[index].names.english,
                                      image: kalosApiStore.getImage(
                                        numero: numero,
                                      ),
                                      activePage: actualPage,
                                      color: kalosApiStore.corPokemon,
                                      pokeNum: numero,
                                      types: listTypes(index),
                                      stats: {
                                        'atk': _kalosAPI[index].stats.attack,
                                        'def': _kalosAPI[index].stats.defense,
                                        'sta': _kalosAPI[index].stats.stamina,
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
    types.add(kalosdex[index].primaryType.names.english);
    kalosdex[index].secondaryType != null
        ? types.add(kalosdex[index].secondaryType.names.english)
        : '';
    return types;
  }
}
