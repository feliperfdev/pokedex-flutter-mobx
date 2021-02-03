import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/styles/textStyles.dart';

class PokeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Container(
      padding: EdgeInsets.only(left: 20, top: 15),
      height: screenHeight / 6.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pokédex', style: pokedexTitle),
          SizedBox(height: 10),
          Text(
              'The Pokédex is an electronic device designed to catalogue and provide'
              'information regarding the\nvarious species of Pokémon featured in the Pokémon video game,'
              'anime and manga series.',
              style: pokedexDesc),
        ],
      ),
    );
  }
}
