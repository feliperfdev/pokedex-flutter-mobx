import 'package:flutter/material.dart';

import 'region_button.dart';

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
