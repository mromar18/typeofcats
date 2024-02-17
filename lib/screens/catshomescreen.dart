import 'package:cats/main.dart';
import 'package:cats/widgets/cat_card.dart';
import 'package:flutter/material.dart';
import '../model/cat.dart';


class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('Types of Cats',style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.favorite))],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: cats.length,
          itemBuilder:(context, index) {
            final cat=cats[index];
            return CatCard(cat: cat,);
          },
      )
    );
  }
}



