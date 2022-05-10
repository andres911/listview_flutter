import 'dart:math';

import 'package:cartoons_flutter/model/characters_data.dart';
import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/character.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO 0: Usa widgets básicos que ya conoces para crear este widget/cell.
    // Algunos consejos útiles:
    // * No elimine el widget Container(), agregue todos sus widgets dentro. Recuerde que el widget Container
    //   tiene un solo hijo, pero su primer paso probablemente debería ser agregar un widget Row como ese hijo.
    // * Cargue imágenes con Image.asset (character.image, ...
    // * En el widget Container, siéntase libre de usar decoration:
    //   BoxDecoration (color: Colors.black12, borderRadius: BorderRadius.all (Radius.circular (20.0)))
    return SizedBox(
      height: 175,
      child: Card(
        color: Colors.grey[350],
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white60, width: 1),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(character.image)
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                    character.name,
                    style: TextStyle( fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 80, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 35
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            character.stars.toString(),
                            style: TextStyle( fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      character.jobTitle,
                      style: TextStyle( fontSize: 20),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
