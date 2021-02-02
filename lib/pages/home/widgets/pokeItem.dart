import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';
import 'package:pokedex_flutter_mobx/models/pokeapi.dart';
import 'package:pokedex_flutter_mobx/stores/pokeapi_store.dart';
import '../../../styles/textStyles.dart';

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
            height: 40,
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

/*=============================================================================================*/

class LowOpacityPokeball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 1, top: 10),
      height: MediaQuery.of(context).size.height / 4.5,
      width: 170,
      child: Image.asset(
        'assets/images/pokeball.png',
        color: Colors.white.withOpacity(0.3),
      ),
    );
  }
}

class PokemonPicture extends StatelessWidget {
  final Widget pokeImage;
  PokemonPicture({this.pokeImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 12),
      height: MediaQuery.of(context).size.height / 5,
      width: 160,
      child: pokeImage,
    );
  }
}

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

class PokeTypes extends StatelessWidget {
  final List<String> types;
  PokeTypes({this.types});
  Color color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: size.height / 15,
        width: size.width / 1.2,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: types.length,
            itemBuilder: (context, index) {
              color = ConstsApp.getColorType(type: types[index]);
              return Card(
                elevation: 1,
                margin: EdgeInsets.all(8),
                color: color.withAlpha(190).withOpacity(0.7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    types[index],
                    style: typeName,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class Weakness extends StatelessWidget {
  final List<String> types;
  final bool activePage;
  Weakness({this.types, this.activePage});
  Color color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double heightWeak = activePage ? 92 : 10;
    return Align(
      alignment: Alignment.topLeft,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: heightWeak,
        width: size.width / 1.3,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: activePage ? 0.4 : 0.8,
              crossAxisCount: 2,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: types.length,
            itemBuilder: (context, index) {
              color = ConstsApp.getColorType(type: types[index]);
              return Card(
                elevation: 1,
                margin: EdgeInsets.all(8),
                color: color.withAlpha(190).withOpacity(0.7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  padding: EdgeInsets.all(3),
                  child: Text(
                    types[index],
                    style: typeName,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
