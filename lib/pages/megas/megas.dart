import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex_flutter_mobx/models/megasApi.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/PokeItem/pokeItem.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/appBar.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/darkPokeball.dart';
import 'package:pokedex_flutter_mobx/stores/apiMega_store.dart';

class Mega extends StatefulWidget {
  @override
  _MegaState createState() => _MegaState();
}

class _MegaState extends State<Mega> {
  MegaApiStore megaApiStore;

  int _currentPage = 0;
  PageController _pageController = PageController(viewportFraction: 0.8);

  List<PokeMegaAPI> megadex = [];
  @override
  void initState() {
    super.initState();
    megaApiStore = MegaApiStore();
    print('Tentando dar fetch na API de Mega Evoluções...');
    megaApiStore.fetchPokeMegaAPI();
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
                        name: 'PokeMegaAPI',
                        builder: (_) {
                          List<PokeMegaAPI> _megaAPI = [];
                          _megaAPI = megaApiStore.apiMega;
                          megadex = _megaAPI;
                          return (_megaAPI != null)
                              ? PageView.builder(
                                  controller: _pageController,
                                  itemCount: 4,
                                  itemBuilder: (_, index) {
                                    bool actualPage = (index == _currentPage);
                                    int id = _megaAPI[index].dexNr;
                                    String numero = id.toString();
                                    return PokeItem(
                                      nome: getMegas(index),
                                      image: megaApiStore.getImage(
                                        numero: numero,
                                      ),
                                      activePage: actualPage,
                                      color: megaApiStore.corPokemon,
                                      pokeNum: numero,
                                      types: listTypes(index),
                                      hasMega: _megaAPI[index].hasMegaEvolution,
                                      stats: {
                                        'atk': _megaAPI[index].stats.attack,
                                        'def': _megaAPI[index].stats.defense,
                                        'sta': _megaAPI[index].stats.stamina,
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
    types.add(megadex[index].primaryType.names.english);
    megadex[index].secondaryType != null
        ? types.add(megadex[index].secondaryType.names.english)
        : '';
    return types;
  }

  String getMegas(int index) {
    List<String> megas = [];
    if (megadex[index].hasMegaEvolution &&
        megadex[index].megaEvolutions != null) {
      megas.add(megadex[index]?.megaEvolutions?.vENUSAURMEGA?.names?.english);
      megas.add(megadex[index]?.megaEvolutions?.charizardmegax?.names?.english);
      megas.add(megadex[index]?.megaEvolutions?.charizardmegay?.names?.english);
      megas.add(megadex[index]?.megaEvolutions?.blastoisemega?.names?.english);
    }
    return megas[index];
  }
}
