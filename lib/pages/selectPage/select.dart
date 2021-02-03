import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/styles/themeScheme.dart';

class SelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: backgroundWhite,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegionButton(
              name: 'Kanto',
              onTap: () {
                Navigator.pushReplacementNamed(context, '/kanto');
              },
            ),
            RegionButton(
              name: 'Johto',
              onTap: null,
            ),
            RegionButton(
              name: 'Hoenn',
              onTap: null,
            ),
          ],
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
              style: TextStyle(
                color: backgroundWhite,
                fontSize: 22,
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
