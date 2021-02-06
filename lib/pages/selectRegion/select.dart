import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';

class SelectRegion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              RegionButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: routes.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 13,
          mainAxisSpacing: 25,
          crossAxisCount: 2,
          childAspectRatio: 1.5,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              color: colors[index],
              height: 10,
              width: 60,
              child: Row(
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: Image.asset(
                      ConstsApp.whitePokeball,
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    regionsName[index],
                    style: GoogleFonts.pressStart2p(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, routes[index]);
            },
          );
        },
      ),
    );
  }
}

List<Color> colors = [
  Colors.redAccent,
  Colors.greenAccent,
  Colors.blueAccent,
  Colors.orangeAccent,
  Colors.purpleAccent,
  Colors.grey,
];
List<String> routes = [
  '/kanto',
  '/johto',
  '/hoenn',
  '/sinnoh',
  '/unova',
  '/kalos',
];
List<String> regionsName = [
  'Kanto',
  'Johto',
  'Hoenn',
  'Sinnoh',
  'Unova',
  'Kalos',
];
