import 'package:flutter/material.dart';
import 'package:series_app/src/widget/header.dart';
import 'package:series_app/src/widget/season_row.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipShadowPath(
                    shadow: Shadow(blurRadius: 7), 
                    clipper: CircularClipper(), 
                    child: Image(
                      height: 400.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/snk-portrait.jpg'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        padding: EdgeInsets.only(left: 15.0, top: 15.0),
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30.0,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  'SHINGEKI NO KYOJIN',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Es una serie de manga japonesa escrita e ilustrada por Hajime Isayama. \n La historia se desarrolla en un mundo ficticio en donde la humanidad está al borde de la extinción a causa de unas criaturas humanoides llamadas titanes, por lo que los sobrevivientes se resguardan en tres enormes murallas que impiden el acceso a los monstruos.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Divider(
                height: 10,
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  'Temporadas',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SeasonRows(),
              Divider(
                height: 10,
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  'Autor - Hajime Isayama',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 400,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/isayama.jpg')
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(19),
                child: Text(
                  'Hajime Isayama ​ es un mangaka japonés, mejor conocido por su obra Shingeki no Kyojin, obra con más de 100 millones de ejemplares en distribución tan solo en Japón, y habiendo vendido más de 2 millones y medio en Estados Unidos, estando el volumen 1 más de 100 semanas seguidas en lo más vendido en cuanto a manga.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}