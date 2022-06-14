import 'package:flutter/material.dart';

Icon ag = Icon(Icons.lock);
Text af = Text("2", style: new TextStyle(color: Colors.white, fontSize: 25.0),textAlign: TextAlign.center,);

class newLevel extends StatefulWidget {
  newLevel({Key? key}) : super(key: key);

  @override
  State<newLevel> createState() => _newLevelState();
}

class _newLevelState extends State<newLevel> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
         
        Container(
          padding: EdgeInsets.all(25),
          color: Colors.yellow,
          
          child: ag
          
        ),
      
      ],
    );
  }
}