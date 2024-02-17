import 'package:flutter/material.dart';

import '../model/cat.dart';



class CatDetailsWidget extends StatefulWidget {
  final Cat cat;
  const CatDetailsWidget({super.key,required this.cat});

  @override
  State<CatDetailsWidget> createState() => _CatDetailsWidgetState();
}

class _CatDetailsWidgetState extends State<CatDetailsWidget> {

  bool isNamedColored=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
            widget.cat.imageLink
        ),
        Text(widget.cat.name,style:
        TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          color: isNamedColored? Colors.deepPurple:Colors.black
        ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.place),
            Text("Origin:${widget.cat.origin}"),
          ],
        ),
        Text("MaxWeight:${widget.cat.maxWeight}"),
        Text("MinWeight:${widget.cat.minWeight}"),
        Text("Length:${widget.cat.length}"),
        Text("Intelligence:${widget.cat.intelligence}"),
        ElevatedButton(
            onPressed: (){
          setState(() {
            isNamedColored= !isNamedColored;
          });
        }, child: Text('Change Name Color'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple
          ),
        )
      ],
    );
  }
}