import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';
import 'package:pokedex_flutter_mobx/pages/widgets/PokeItem/stats.dart';
import 'package:pokedex_flutter_mobx/styles/textStyles.dart';
import 'opacityPokeball.dart';
import 'picture.dart';
import 'pokemonName.dart';
import 'types.dart';

class PokeItem extends StatefulWidget {
  final String nome;
  final int index;
  final String pokeNum;
  final bool activePage;
  Color color;
  Map<String, dynamic> stats;
  final Widget image;
  final List<String> types;
  final bool hasMega;
  PokeItem({
    this.image,
    this.color,
    this.index,
    this.nome,
    this.types,
    this.pokeNum,
    this.activePage,
    this.stats,
    this.hasMega,
  });

  @override
  _PokeItemState createState() => _PokeItemState();
}

class _PokeItemState extends State<PokeItem> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    widget.color = ConstsApp.getColorType(type: widget.types[0]);
    final double offset = this.widget.activePage ? 10 : 0;
    final double blurRadius = this.widget.activePage ? 18 : 0;
    final double containerMenor = this.widget.activePage ? 8 : 40;
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
            padding: EdgeInsets.only(top: 20, bottom: 5),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: widget.color,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.pokeNum.length < 2
                      ? '#00${widget.pokeNum}'
                      : widget.pokeNum.length < 3
                          ? '#0${widget.pokeNum}'
                          : '#${widget.pokeNum}',
                  style: pokemonName,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: !widget.activePage ? 0 : 160,
                  child: Stack(
                    children: [
                      LowOpacityPokeball(),
                      PokemonPicture(
                        pokeImage: widget.image,
                      ),
                    ],
                  ),
                ),
                PokemonName(nome: widget.nome),
              ],
            ),
          ),
          Text('Types', style: pokemonTypeInfo),
          PokeTypes(
            types: widget.types,
          ),
          Divider(thickness: 3),
          SizedBox(height: 10),
          Stats(stats: widget.stats),
        ],
      ),
    );
  }
}
