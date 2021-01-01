import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/styles/textStyles.dart';

class PokeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 5),
      height: 145,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Pokédex', style: pokedexTitle),
          IconButton(
            icon: Icon(Icons.list),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
