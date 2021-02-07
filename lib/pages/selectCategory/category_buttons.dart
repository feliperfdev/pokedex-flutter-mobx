import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';

import 'shared/category_global.dart';

class CategoryButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(left: 20, right: 20, top: 60),
        itemCount: routes.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(bottom: 20),
            child: GestureDetector(
              child: Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colors[index],
                ),
                height: size.height / 4.5,
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
                    SizedBox(width: 20),
                    Text(
                      categoryName[index],
                      style: GoogleFonts.pressStart2p(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, routes[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
