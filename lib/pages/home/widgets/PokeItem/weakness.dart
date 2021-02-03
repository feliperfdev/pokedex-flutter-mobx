import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';
import 'package:pokedex_flutter_mobx/styles/textStyles.dart';

class Weakness extends StatelessWidget {
  final List<String> types;
  final bool activePage;
  Weakness({this.types, this.activePage});
  Color color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double heightWeak = activePage ? (size.height / 8) : 10;
    return Align(
      alignment: Alignment.topLeft,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: heightWeak,
        width: size.width / 1.2,
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
