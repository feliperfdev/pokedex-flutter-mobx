import 'package:flutter/material.dart';

class PokeItem extends StatelessWidget {
  final String nome;
  final int index;
  final Color color;
  final Widget image;
  PokeItem({this.image, this.color, this.index, this.nome});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.red,
        elevation: 3,
        child: Container(
          height: 170,
          child: Center(
            child: Text(nome),
          ),
        ),
      ),
    );
  }
}
