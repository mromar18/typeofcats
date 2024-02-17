import 'package:cats/widgets/cat_details.dart';
import 'package:flutter/material.dart';
import '../model/cat.dart';

class CatDetailsScreen extends StatelessWidget {
  final Cat cat;
  const CatDetailsScreen({super.key,required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(cat.name,style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: CatDetailsWidget(
        cat: cat,
      ),
    );
  }
}



