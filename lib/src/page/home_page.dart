import 'package:flutter/material.dart';
import 'package:series_app/src/widget/buttons.dart';
import 'package:series_app/src/widget/header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ClipShadowPath(
              clipper: CircularClipper(),
              shadow: Shadow(blurRadius: 10),
              child: Image(
                height: 400.0,
                width: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage('assets/snk-portrait.jpg'),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(25),
              child: Text(
                'SHINGEKI NO KYOJIN  ATAQUE A LOS TITANES',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ButtonList()
          ],
        )
      ),
    );
  }
}