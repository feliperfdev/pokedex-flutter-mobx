import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_flutter_mobx/styles/themeScheme.dart';

class SelectCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: backgroundWhite,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CategoryButton(
              name: 'Regions',
              onTap: () {
                Navigator.pushNamed(context, '/regions');
              },
            ),
            CategoryButton(
              name: 'Megas',
              onTap: () {
                Navigator.pushNamed(context, '/megas');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String name;
  final Function onTap;

  const CategoryButton({Key key, this.name, this.onTap}) : super(key: key);

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
                decoration: TextDecoration.none,
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
