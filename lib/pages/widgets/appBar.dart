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
          Row(
            children: [
              Text('Pokédex', style: pokedexTitle),
              Spacer(),
              IconButton(
                hoverColor: Colors.red.withOpacity(0.6),
                splashColor: Colors.red.withOpacity(0.6),
                splashRadius: 20,
                icon: Icon(Icons.arrow_back, size: 30),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
