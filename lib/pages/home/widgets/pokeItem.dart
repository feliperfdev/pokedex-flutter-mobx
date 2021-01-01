import 'package:flutter/material.dart';
import '../../../styles/textStyles.dart';

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
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 1),
                height: 180,
                width: 170,
                child: Image.asset(
                  'assets/images/pokeball.png',
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                height: 180,
                width: 160,
                child: image,
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    nome,
                    style: pokemonName,
                  ),
                ),
              ),
              // Align(
              //   alignment: Alignment.bottomRight,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Card(
              //         margin: EdgeInsets.all(8),
              //         color: Colors.white.withOpacity(0.3),
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(10)),
              //         child: Container(
              //           padding: EdgeInsets.all(5),
              //           height: 30,
              //           width: 110,
              //           child: Text(
              //             'TYPE 1',
              //             style: typeName,
              //             textAlign: TextAlign.center,
              //           ),
              //         ),
              //       ),
              //       Card(
              //         margin: EdgeInsets.all(8),
              //         color: Colors.white.withOpacity(0.3),
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(10)),
              //         child: Container(
              //           padding: EdgeInsets.all(5),
              //           height: 30,
              //           width: 110,
              //           child: Text(
              //             'TYPE 2',
              //             style: typeName,
              //             textAlign: TextAlign.center,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
