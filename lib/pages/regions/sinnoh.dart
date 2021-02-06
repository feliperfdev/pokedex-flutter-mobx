import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex_flutter_mobx/models/pokeApiSinnoh.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/PokeItem/pokeItem.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/appBar.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/darkPokeball.dart';
import 'package:pokedex_flutter_mobx/stores/Sinnoh/sinnohapi_store.dart';

class Sinnoh extends StatefulWidget {
  @override
  _SinnohState createState() => _SinnohState();
}

class _SinnohState extends State<Sinnoh> {
  SinnohApiStore sinnohApiStore;

  int _currentPage = 0;
  PageController _pageController = PageController(viewportFraction: 0.8);

  List<PokeAPISinnoh> sinnohdex = [];
  @override
  void initState() {
    super.initState();
    sinnohApiStore = SinnohApiStore();
    print('Tentando dar fetch na API de Sinnoh...');
    sinnohApiStore.fetchPokeAPISinnoh();
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
                        name: 'PokeAPISinnoh',
                        builder: (_) {
                          List<PokeAPISinnoh> _sinnohAPI = [];
                          _sinnohAPI = sinnohApiStore.apiSinnoh;
                          sinnohdex = _sinnohAPI;
                          return (_sinnohAPI != null)
                              ? PageView.builder(
                                  controller: _pageController,
                                  itemCount: _sinnohAPI.length,
                                  itemBuilder: (_, index) {
                                    bool actualPage = (index == _currentPage);
                                    int id = _sinnohAPI[index].dexNr;
                                    String numero = id.toString();
                                    return PokeItem(
                                      nome: _sinnohAPI[index].names.english,
                                      image: sinnohApiStore.getImage(
                                        numero: numero,
                                      ),
                                      activePage: actualPage,
                                      color: sinnohApiStore.corPokemon,
                                      pokeNum: numero,
                                      types: listTypes(index),
                                      stats: {
                                        'atk': _sinnohAPI[index].stats?.attack,
                                        'def': _sinnohAPI[index].stats?.defense,
                                        'sta': _sinnohAPI[index].stats?.stamina,
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
    types.add(sinnohdex[index].primaryType.names.english);
    sinnohdex[index].secondaryType != null
        ? types.add(sinnohdex[index].secondaryType.names.english)
        : '';
    return types;
  }
}
