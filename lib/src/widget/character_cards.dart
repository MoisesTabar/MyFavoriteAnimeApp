import 'package:flutter/material.dart';
import 'package:series_app/src/utils/load_json.dart';
import 'package:series_app/src/widget/header.dart';

class CharacterCards extends StatelessWidget {

  List<Widget>_buildCard(List data, BuildContext context){
    return data.map((dt) => Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: Column(
        children: [
            ListTile(
              leading: Icon(Icons.data_usage_sharp),
              title: Text('${dt['character']}'),
              subtitle: Text('${dt['romaji']}'),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CharacterDetails(
                      characterName: dt['character'], 
                      characterRomaji: dt['romaji'], 
                      description: dt['description'], 
                      characterImage: dt['img']
                    );
                  })), 
                  child: Text(
                    'Click para mas Informacion',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ) 
                ),
              ],
            )
          ],
        ),
      )
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Personajes de Shingeki no Kyojin', style: TextStyle(fontWeight: FontWeight.w300))
        ),
        backgroundColor: Colors.white,
        body: FutureBuilder<List<dynamic>>(
          future: loadJson('data/characters.json', 'characters'),
          initialData: [],
          builder: (context, snapshot){
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: _buildCard(snapshot.requireData, context)
              ),
            );
          }
        ),
      ),
    );  
  }
}

class CharacterDetails extends StatelessWidget {

  late final String characterName;
  late final String characterRomaji;
  late final String characterImage;
  late final String description;

  CharacterDetails({
    required this.characterImage,
    required this.characterRomaji,
    required this.characterName,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    image: AssetImage(characterImage),
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
            SizedBox(height: 15),
            Text(
              characterName,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 5),
            Text(
              characterRomaji,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(13),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}