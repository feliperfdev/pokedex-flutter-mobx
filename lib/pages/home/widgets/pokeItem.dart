import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';
import '../../../styles/textStyles.dart';

class PokeItem extends StatelessWidget {
  final String nome;
  final int index;
  Color color;
  final Widget image;
  final List<String> types;
  PokeItem({this.image, this.color, this.index, this.nome, this.types});

  @override
  Widget build(BuildContext context) {
    color = ConstsApp.getColorType(type: types[0]);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: color,
        elevation: 3,
        child: Container(
          height: 170,
          child: Stack(
            children: [
              LowOpacityPokeball(),
              PokemonPicture(pokeImage: image),
              PokemonName(nome: nome),
              PokeTypes(
                types: types,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*=============================================================================================*/

class LowOpacityPokeball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 1),
      height: MediaQuery.of(context).size.height,
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
      padding: EdgeInsets.only(left: 10),
      height: MediaQuery.of(context).size.height,
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
        alignment: Alignment.topRight,
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
    color = ConstsApp.getColorType(type: types[0]);
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 92,
        width: 150,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: types.length,
            itemBuilder: (context, index) {
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
