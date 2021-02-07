import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 24,
      splashColor: Colors.red.withOpacity(0.6),
      icon: Icon(
        Icons.info,
        color: Colors.redAccent,
        size: 40,
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/info');
      },
    );
  }
}
