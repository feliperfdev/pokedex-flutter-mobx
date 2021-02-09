import 'package:flutter/material.dart';

class LowOpacityPokeball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        padding: EdgeInsets.only(left: 1, top: 10),
        height: constraints.maxHeight,
        width: constraints.maxWidth * .53,
        child: Image.asset(
          'assets/images/pokeball.png',
          color: Colors.white.withOpacity(0.3),
        ),
      ),
    );
  }
}
