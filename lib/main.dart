import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/pages/infoPage/info.dart';
import 'package:pokedex_flutter_mobx/pages/megas/megas.dart';
import 'package:pokedex_flutter_mobx/pages/regions/hoenn.dart';
import 'package:pokedex_flutter_mobx/pages/regions/johto.dart';
import 'package:pokedex_flutter_mobx/pages/regions/kalos.dart';
import 'package:pokedex_flutter_mobx/pages/regions/kanto.dart';
import 'package:pokedex_flutter_mobx/pages/regions/sinnoh.dart';
import 'package:pokedex_flutter_mobx/pages/regions/unova.dart';
import 'package:pokedex_flutter_mobx/pages/selectCategory/categoryPage.dart';
import 'package:pokedex_flutter_mobx/pages/selectRegion/select.dart';
import 'package:pokedex_flutter_mobx/splash/splash_screen.dart';
import 'package:pokedex_flutter_mobx/styles/themeScheme.dart';

void main() => runApp(InitApp());

class InitApp extends StatelessWidget {
  const InitApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      theme: themeScheme(),
      routes: {
        '/splash': (context) => Splash(),
        '/categories': (context) => SelectCategory(),
        '/info': (context) => InfoPage(),
        '/regions': (context) => SelectRegion(),
        '/megas': (context) => Mega(),
        '/kanto': (context) => Kanto(),
        '/johto': (context) => Johto(),
        '/hoenn': (context) => Hoenn(),
        '/sinnoh': (context) => Sinnoh(),
        '/unova': (context) => Unova(),
        '/kalos': (context) => Kalos(),
      },
    );
  }
}

/*

ROUTES:
 /categories   Select Categories Page
 /info       Info page
 /megas     Megas Dex
 /regions   Select Regions Page
 /kanto    Kanto Dex
 /johto    Johto Dex
 /hoenn    Hoenn Dex
 /sinnoh   Sinnoh Dex
 /unova    Unova Dex
 /kalos    Kalos Dex
*/
