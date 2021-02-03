import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/pages/regions/kanto.dart';
import 'package:pokedex_flutter_mobx/styles/themeScheme.dart';

void main() => runApp(InitApp());

class InitApp extends StatelessWidget {
  const InitApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      debugShowCheckedModeBanner: false,
      initialRoute: '/kanto',
      theme: themeScheme(),
      routes: {
        '/kanto': (context) => Kanto(),
      },
    );
  }
}

/*

ROUTES:
 /select   Select Page
 /kanto    Kanto Dex
 /johto    Johto Dex
 /hoenn    Hoenn Dex
*/
