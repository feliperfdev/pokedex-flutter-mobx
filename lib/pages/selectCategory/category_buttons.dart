import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';

import 'shared/category_global.dart';

class CategoryButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ListView.builder(
            itemCount: routes.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.transparent,
                    width: constraints.maxWidth * .1,
                  ),
                ),
                child: GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: constraints.minWidth,
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: colors[index],
                    ),
                    height: constraints.maxHeight * .25,
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.8,
                          child: Image.asset(
                            ConstsApp.whitePokeball,
                            fit: BoxFit.cover,
                            height: constraints.maxHeight * .12,
                            width: constraints.maxWidth * .20,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          categoryName[index],
                          style: GoogleFonts.pressStart2p(
                            fontSize: constraints.maxWidth * .07,
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
          );
        },
      ),
    );
  }
}
