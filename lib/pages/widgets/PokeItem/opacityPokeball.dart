import 'package:flutter/material.dart';

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
