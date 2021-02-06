import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex_flutter_mobx/models/pokeApiUnova.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/PokeItem/pokeItem.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/appBar.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/darkPokeball.dart';
import 'package:pokedex_flutter_mobx/stores/Unova/unovaapi_store.dart';

class Unova extends StatefulWidget {
  @override
  _UnovaState createState() => _UnovaState();
}

class _UnovaState extends State<Unova> {
  UnovaApiStore unovaApiStore;

  int _currentPage = 0;
  PageController _pageController = PageController(viewportFraction: 0.8);

  List<PokeAPIUnova> unovadex = [];
  @override
  void initState() {
    super.initState();
    unovaApiStore = UnovaApiStore();
    print('Tentando dar fetch na API de Unova...');
    unovaApiStore.fetchPokeAPIUnova();
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
                        name: 'PokeAPIUnova',
                        builder: (_) {
                          List<PokeAPIUnova> _unovaAPI = [];
                          _unovaAPI = unovaApiStore.apiUnova;
                          unovadex = _unovaAPI;
                          return (_unovaAPI != null)
                              ? PageView.builder(
                                  controller: _pageController,
                                  itemCount: _unovaAPI.length,
                                  itemBuilder: (_, index) {
                                    bool actualPage = (index == _currentPage);
                                    int id = _unovaAPI[index].dexNr;
                                    String numero = id.toString();
                                    return PokeItem(
                                      nome: _unovaAPI[index].names.english,
                                      image: unovaApiStore.getImage(
                                        numero: numero,
                                      ),
                                      activePage: actualPage,
                                      color: unovaApiStore.corPokemon,
                                      pokeNum: numero,
                                      types: listTypes(index),
                                      stats: {
                                        'atk': _unovaAPI[index].stats?.attack,
                                        'def': _unovaAPI[index].stats?.defense,
                                        'sta': _unovaAPI[index].stats?.stamina,
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
    types.add(unovadex[index].primaryType.names.english);
    unovadex[index].secondaryType != null
        ? types.add(unovadex[index].secondaryType.names.english)
        : '';
    return types;
  }
}
