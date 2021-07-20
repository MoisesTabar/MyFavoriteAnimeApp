import 'package:flutter/material.dart';
import 'package:series_app/src/page/about_page.dart';
import 'package:series_app/src/page/characters_page.dart';
import 'package:series_app/src/page/error/not_found.dart';
import 'package:series_app/src/page/home_page.dart';
import 'package:series_app/src/page/life_page.dart';
import 'package:series_app/src/page/moments_page.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => HomePage(),
        'characters' : (context) => CharactersPage(),
        'moments': (context) => MomentsPage(),
        'about': (context) => AboutPage(),
        'life': (context) => LifePage()
      },
      onGenerateRoute: (settings){
        return MaterialPageRoute(builder: (context) => NotFoundPage());
      }
    );
  }
}