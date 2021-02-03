import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/styles/textStyles.dart';

class PokemonName extends StatelessWidget {
  final String nome;
  PokemonName({this.nome});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          nome,
          style: nome.length < 15 ? pokemonName : pokemonNameSmall,
        ),
      ),
    );
  }
}
