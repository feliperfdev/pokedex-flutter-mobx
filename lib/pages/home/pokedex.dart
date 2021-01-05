import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:pokedex_flutter_mobx/models/pokeapi.dart';
import 'package:pokedex_flutter_mobx/pages/home/widgets/appBar.dart';
import 'package:pokedex_flutter_mobx/pages/home/widgets/darkPokeball.dart';
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
    // Size screenSize = MediaQuery.of(context).size;
    // double screenWidth = screenSize.width;
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
                        name: 'PokeAPI',
                        builder: (_) {
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
                                          child: InkWell(
                                            child: PokeItem(
                                              types: pokemon.type,
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
