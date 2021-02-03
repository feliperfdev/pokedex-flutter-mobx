import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/styles/textStyles.dart';

class Stats extends StatelessWidget {
  Map<String, dynamic> stats;

  Stats({this.stats});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          Text('STATS', style: pokemonTypeInfo),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                title: Text('Attack:', style: pokemonStatsInfo),
                subtitle: Text(
                  stats['atk'].toString(),
                  style: pokemonStatsValuesInfo,
                ),
              ),
              ListTile(
                title: Text('Deffense:', style: pokemonStatsInfo),
                subtitle: Text(
                  stats['def'].toString(),
                  style: pokemonStatsValuesInfo,
                ),
              ),
              ListTile(
                title: Text('Stamina:', style: pokemonStatsInfo),
                subtitle: Text(
                  stats['sta'].toString(),
                  style: pokemonStatsValuesInfo,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
