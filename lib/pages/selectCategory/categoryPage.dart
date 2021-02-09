import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/pages/selectCategory/info_btn.dart';
import 'category_buttons.dart';

class SelectCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InfoButton(),
        ],
      ),
      body: LayoutBuilder(
        builder: (_, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CategoryButtons(),
            ],
          );
        },
      ),
    );
  }
}
