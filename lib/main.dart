import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/pages/regions/hoenn.dart';
import 'package:pokedex_flutter_mobx/pages/regions/johto.dart';
import 'package:pokedex_flutter_mobx/pages/regions/kanto.dart';
import 'package:pokedex_flutter_mobx/pages/selectPage/select.dart';
import 'package:pokedex_flutter_mobx/styles/themeScheme.dart';

void main() => runApp(InitApp());

class InitApp extends StatelessWidget {
  const InitApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      debugShowCheckedModeBanner: false,
      initialRoute: '/select',
      theme: themeScheme(),
      routes: {
        '/select': (context) => SelectPage(),
        '/kanto': (context) => Kanto(),
        '/johto': (context) => Johto(),
        '/hoenn': (context) => Hoenn(),
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
