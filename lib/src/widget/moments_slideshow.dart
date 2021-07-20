import 'package:flutter/material.dart';
import 'package:series_app/src/utils/load_json.dart';

class MomentsSlideshow extends StatefulWidget {
  @override
  _MomentsSlideshowState createState() => _MomentsSlideshowState();
}

class _MomentsSlideshowState extends State<MomentsSlideshow> {

  List<Widget> _buildSlideshowList(List data){
    return data.map((dt) => Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            dt['title'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 15),
          Image.asset(dt['img']),
          SizedBox(height: 15),
          Text(
            dt['description'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17
            ),
          )
        ],
      ),
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Momentos de Shingeki no Kyojin', 
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black
            )
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(Icons.arrow_back, color: Colors.black)
          ),
        ),
        backgroundColor: Colors.white,
        body: FutureBuilder<List<dynamic>>(
          future: loadJson('data/moments.json', 'moments'),
          initialData: [],
          builder: (context, snapshot){
            return Container(
              child: PageView(
                children: _buildSlideshowList(snapshot.requireData),
              ),
            );
          },
        ),
      )
    );
  }
}