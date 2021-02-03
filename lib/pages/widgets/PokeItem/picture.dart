import 'package:flutter/material.dart';

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
