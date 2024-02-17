import 'package:cats/screens/cat_details_screen.dart';
import 'package:flutter/material.dart';

import '../model/cat.dart';


//this widget  shows a card that shows the image and name of the cat

class CatCard extends StatelessWidget {
final Cat cat;
  const CatCard({super.key,required this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder:(context){
          return CatDetailsScreen(cat: cat);
        }
        )
        );
      },

      child: Card(
        color: Colors.grey[100],
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                width:double.infinity,fit: BoxFit.cover,cat.imageLink)
            ),
            Text(cat.name)
          ],),
      ),
    );
  }
}