import 'package:flutter/material.dart';
import 'package:series_app/src/utils/load_json.dart';

class ButtonList extends StatelessWidget {

  List<Widget> _buildItems(List data, BuildContext context){
    return data.map((dt) => 
      ListTile(
        onTap: () => Navigator.pushNamed(context, dt['route']),
        title: Center(
          child: Text(dt['option'],
          ),
        ),
      )
    ).toList();
  } 

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<List<dynamic>>(
        future: loadJson('data/routes.json', 'routes'),
        initialData: [],
        builder: (context, snapshot){
          return ListView(
            children: _buildItems(snapshot.requireData, context),
          );
        },
      ), 
    );
  }
}