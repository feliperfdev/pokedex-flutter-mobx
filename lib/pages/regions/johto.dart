import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex_flutter_mobx/models/pokeApiJohto.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/PokeItem/pokeItem.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/appBar.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/darkPokeball.dart';
import 'package:pokedex_flutter_mobx/repositories/johtoRepo.dart';
import 'package:pokedex_flutter_mobx/stores/pokeapi_store.dart';

class Johto extends StatefulWidget {
  @override
  _JohtoState createState() => _JohtoState();
}

class _JohtoState extends State<Johto> {
  PokeApiStore pokeApiStore;

  int _currentPage = 0;
  PageController _pageController = PageController(viewportFraction: 0.8);

  List<PokeAPIJohto> johtodex = [];
  @override
  void initState() {
    super.initState();
    pokeApiStore = PokeApiStore();
    pokeApiStore.fetchPokeAPIJohto();
    _pageController.addListener(() {
      int next = _pageController.page.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
  }

  // Future<List<PokeAPIJohto>> johtoFetch() async {
  //   final johtoRepository = JohtoRepository();
  //   johtodex = await johtoRepository.loadPokeAPIJohto();
  //   print(johtodex[1].names.english);
  //   print(johtodex[2].names.english);
  //   print(johtodex[3].names.english);
  //   print(johtodex[98].names.english);
  //   return johtodex;
  // }

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
                          List<PokeAPIJohto> _johtoAPI = pokeApiStore.apiJohto;
                          print(_johtoAPI.length?.toString());
                          return (_johtoAPI != null)
                              ? PageView.builder(
                                  controller: _pageController,
                                  itemCount: johtodex.length ?? 0,
                                  itemBuilder: (_, index) {
                                    bool actualPage = (index == _currentPage);
                                    return PokeItem(
                                      nome: johtodex[index].names.english,
                                      activePage: actualPage,
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
}
