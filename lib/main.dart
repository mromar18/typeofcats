import 'package:cats/data/cats.dart';
import 'package:cats/screens/catshomescreen.dart';
import 'package:flutter/material.dart';
import 'model/cat.dart';


final cats=allcats.map<Cat>((jsonCat)=> Cat.fromJson(jsonCat)).toList();
void main() {

  // //how  to parse cats from json to cat object
  //
  // final listOfCatsAsJosn=allcats;
  // final listOfCatsAsObjects=<Cat>[];
  // for(var i=0;i<listOfCatsAsJosn.length;i++){
  //   final catAsJson=listOfCatsAsJosn[i];
  //   final catAsObject=Cat.fromJson(catAsJson);
  //   listOfCatsAsObjects.add(catAsObject);
  // }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatsHomeScreen()
    );
  }
}


