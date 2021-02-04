import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_flutter_mobx/styles/themeScheme.dart';

class SelectRegion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: backgroundWhite,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegionButton(
                name: 'Kanto',
                onTap: () {
                  Navigator.pushNamed(context, '/kanto');
                },
              ),
              RegionButton(
                name: 'Johto',
                onTap: () {
                  Navigator.pushNamed(context, '/johto');
                },
              ),
              RegionButton(
                name: 'Hoenn',
                onTap: () {
                  Navigator.pushNamed(context, '/hoenn');
                },
              ),
              RegionButton(
                name: 'Sinnoh',
                onTap: () {
                  Navigator.pushNamed(context, '/sinnoh');
                },
              ),
              RegionButton(
                name: 'Unova',
                onTap: () {
                  Navigator.pushNamed(context, '/unova');
                },
              ),
              RegionButton(
                name: 'Kalos',
                onTap: () {
                  Navigator.pushNamed(context, '/kalos');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegionButton extends StatelessWidget {
  final String name;
  final Function onTap;

  const RegionButton({Key key, this.name, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(20),
        height: size.height / 20,
        width: size.width - 30,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              Icons.arrow_drop_down_circle,
              color: backgroundWhite,
            ),
            Spacer(),
            Text(
              name,
              style: GoogleFonts.pressStart2p(
                color: backgroundWhite,
                fontSize: 18,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
