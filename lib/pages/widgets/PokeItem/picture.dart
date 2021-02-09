import 'package:flutter/material.dart';

class PokemonPicture extends StatelessWidget {
  final Widget pokeImage;
  PokemonPicture({this.pokeImage});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        padding: EdgeInsets.only(left: 10, top: 12),
        height: constraints.maxHeight,
        width: constraints.maxWidth * .53,
        child: pokeImage,
      ),
    );
  }
}
