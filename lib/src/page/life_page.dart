import 'package:flutter/material.dart';

class LifePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Shingeki no Kyojin y mi vida'),
          backgroundColor: Colors.black,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Text(
             ''' Shingeki no Kyojin fue un anime que me recomendaron, empece a verlo, pero no hice empatia con la historia. 
              Solamente vi las 2 primeras temporadas y la segunda fue por la mitad. Varios años despues
              me gana la curiosidad de saber como va el anime, asi que empece a verlo de nuevo por donde me quede. Para mi sorpresa la historia dio un giro bastante interesante en la 3era Temporada, que era la ultima en ese tiempo.
              Cosa que me motiva a leer el manga. 
              Al leerlo, me doy cuenta de la gran historia que se cuenta, comence a analizar los personajes, sus perfiles psicologicos, a buscarle el por que de su accionar y encontre en cada uno de ellos, un pasado que en algunos casos aunque no se justifiquen sus acciones, hay un por que y de esta manera se puede entender de una forma objetiva a los personajes. Aunque es algo ficticio el tema esta intimamente relacionado con acontecimientos actuales, como el racismo, la discriminacion, el anarquismo, el odio, la manipulacion, etc... que llevan a una serie de acontecimientos y marañas
              que al final se convierten en destructivas para los personajes. Tales cosas nos dejan con un aprendizaje que debemos ver todas las vertientes de un tema,
              que no debemos prejuciarnos, que si nos dejamos arrastrar por el racismo, se pueden llegar a cometer injusticias hasta el punto de destruirnos a nosotros mismos.
             ''',
             style: TextStyle(
               fontSize: 17
             ),
           ),
        ),
      ),
    );
  }
}