import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';
import 'package:pokedex_flutter_mobx/pages/selectRegion/shared/select_global.dart';

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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colors[index],
              ),
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
                  SizedBox(width: 3),
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
