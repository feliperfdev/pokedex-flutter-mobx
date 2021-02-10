import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';
import 'package:pokedex_flutter_mobx/styles/textStyles.dart';

class PokeTypes extends StatelessWidget {
  final List<String> types;
  PokeTypes({this.types});
  Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: constraints.maxWidth * .172,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: types.length,
              itemBuilder: (_, index) {
                color = ConstsApp.getColorType(type: types[index]);
                return Card(
                  elevation: 1,
                  margin: EdgeInsets.all(8.5),
                  color: color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    width: 90,
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
      ),
    );
  }
}
