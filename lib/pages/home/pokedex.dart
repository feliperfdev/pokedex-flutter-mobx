import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';
import 'package:pokedex_flutter_mobx/models/pokeapi.dart';
import 'package:pokedex_flutter_mobx/pages/home/widgets/appBar.dart';
import 'package:pokedex_flutter_mobx/pages/home/widgets/pokeItem.dart';
import 'package:pokedex_flutter_mobx/stores/pokeapi_store.dart';

class Pokedex extends StatefulWidget {
  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  PokeApiStore pokeApiStore;
  @override
  void initState() {
    super.initState();
    pokeApiStore = PokeApiStore();
    pokeApiStore.fetchPokeAPI();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -(240 / 4.7),
              left: screenWidth - (240 / 1.6),
              child: Image.asset(
                ConstsApp.darkPokeball,
                color: Colors.grey.withOpacity(0.1),
                height: 240,
                width: 240,
              ),
            ),
            Container(
              child: Column(
                children: [
                  PokeAppBar(),
                  Expanded(
                    child: Container(
                      child: Observer(
                        // name: 'ListaHomePage',
                        builder: (BuildContext context) {
                          PokeAPI _pokeAPI = pokeApiStore.pokeAPI;
                          return (_pokeAPI != null)
                              ? AnimationLimiter(
                                  child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    padding: EdgeInsets.all(12),
                                    addAutomaticKeepAlives: true,
                                    itemCount:
                                        pokeApiStore.pokeAPI.pokemon.length,
                                    itemBuilder: (context, index) {
                                      Pokemon pokemon =
                                          pokeApiStore.getPokemon(index: index);
                                      return AnimationConfiguration
                                          .staggeredList(
                                        position: index,
                                        duration:
                                            const Duration(milliseconds: 375),
                                        child: ScaleAnimation(
                                          child: GestureDetector(
                                            child: PokeItem(
                                              index: index,
                                              nome: pokemon.name,
                                              image: pokeApiStore.getImage(
                                                  numero: pokemon.num),
                                            ),
                                            onTap: () {
                                              // _pokemonStore.setPokemonAtual(
                                              //     index: index);
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //     builder:
                                              //         (BuildContext context) =>
                                              //             PokeDetailPage(
                                              //       index: index,
                                              //     ),
                                              //     fullscreenDialog: true,
                                              //   ),
                                              // );
                                            },
                                          ),
                                        ),
                                      );
                                    },
                                  ),
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
