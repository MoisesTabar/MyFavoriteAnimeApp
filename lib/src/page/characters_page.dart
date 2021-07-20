import 'package:flutter/material.dart';
import 'package:series_app/src/widget/character_cards.dart';

class CharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CharacterCards(), 
    );
  }
}