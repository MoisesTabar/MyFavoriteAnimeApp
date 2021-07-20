import 'package:flutter/material.dart';
import 'package:series_app/src/utils/load_json.dart';

class SeasonRows extends StatelessWidget {

  List<Widget> _buildItems(List data){
    return data.map((dt) => Column(
      children: [
        Container(
          height: 300,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Image.asset(dt['img']),
        ),
        Padding(
          padding: const EdgeInsets.all(7),
          child: Text(
            dt['title'], 
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16
            )
          ),
        )
      ],
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FutureBuilder<List<dynamic>>(
        future: loadJson('data/seasons.json', 'seasons'),
        initialData: [],
        builder: (context, snapshot){
          return Row(
            children: _buildItems(snapshot.requireData),
          );
        },
      ), 
    );
  }
}