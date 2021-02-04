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
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Attack:', style: pokemonStatsInfo),
                    Text(stats['atk'].toString(),
                        style: pokemonStatsValuesInfo),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      Text('Deffense:', style: pokemonStatsInfo),
                      Text(stats['def'].toString(),
                          style: pokemonStatsValuesInfo),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text('Stamina:', style: pokemonStatsInfo),
                    Text(stats['sta'].toString(),
                        style: pokemonStatsValuesInfo),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
