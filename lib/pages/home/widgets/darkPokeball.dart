import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';

class DarkPokeball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    return Positioned(
              top: -(240 / 4.7),
              left: screenWidth - (240 / 1.6),
              child: Image.asset(
                ConstsApp.darkPokeball,
                color: Colors.grey.withOpacity(0.1),
                height: 240,
                width: 240,
              ),
            );
  }
}