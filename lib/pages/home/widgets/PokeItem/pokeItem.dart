import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';
import 'package:pokedex_flutter_mobx/pages/home/widgets/PokeItem/types.dart';
import '../../../../styles/textStyles.dart';
import 'opacityPokeball.dart';
import 'picture.dart';
import 'pokemonName.dart';
import 'weakness.dart';

class PokeItem extends StatelessWidget {
  final String nome;
  final int index;
  final String pokeNum;
  final bool activePage;
  Color color;
  final Widget image;
  final String height;
  final String weight;
  final List<String> types;
  final List<String> weak;
  PokeItem({
    this.image,
    this.color,
    this.index,
    this.nome,
    this.types,
    this.pokeNum,
    this.activePage,
    this.height,
    this.weight,
    this.weak,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    color = ConstsApp.getColorType(type: types[0]);
    final double offset = this.activePage ? 10 : 0;
    final double blurRadius = this.activePage ? 18 : 0;
    final double containerMenor = this.activePage ? 8 : 40;
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin:
          EdgeInsets.only(top: containerMenor, bottom: 20, left: 8, right: 8),
      height: size.height / (4.46),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(offset, offset),
            blurRadius: blurRadius,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            margin: EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '#$pokeNum',
                  style: pokemonName,
                ),
                Stack(
                  children: [
                    LowOpacityPokeball(),
                    PokemonPicture(
                      pokeImage: image,
                    ),
                  ],
                ),
                PokemonName(
                  nome: nome,
                ),
              ],
            ),
          ),
          Text('Types', style: pokemonTypeInfo),
          PokeTypes(
            types: types,
          ),
          Divider(thickness: 3),
          Container(
            padding: EdgeInsets.all(10),
            width: size.width / 1.5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Height: ${height}', style: pokemonBodyInfo),
                Text('Weight: ${weight}', style: pokemonBodyInfo),
              ],
            ),
          ),
          Divider(thickness: 3),
          SizedBox(height: 10),
          Container(
            child: Column(
              children: [
                Text('Weakness', style: pokemonTypeInfo),
                Weakness(
                  activePage: activePage,
                  types: weak,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
