

import 'dart:math';
import 'package:teknofest_c1/Seviyeler/ilkOkulSeviyeler.dart';
import 'package:teknofest_c1/Seviyeler/liseSeviyeler.dart';
import 'package:teknofest_c1/Seviyeler/ortaOkulSeviyler.dart';
import 'package:teknofest_c1/levelLise/level15.dart';
import 'package:teknofest_c1/levelOrtaOkul/level1.dart';
import 'package:teknofest_c1/levelOrtaOkul/level2.dart';
import 'package:teknofest_c1/oyunİci.dart';

import 'coktan_secmeli.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class oyunSonuKazanma extends StatefulWidget {
  oyunSonuKazanma({Key? key}) : super(key: key);

  @override
  State<oyunSonuKazanma> createState() => _oyunSonuKazanmaState();
}

class _oyunSonuKazanmaState extends State<oyunSonuKazanma> {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       
        body: SafeArea(
        
          child: Column(
          
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          
              seviyeler(),
              SizedBox(height: 50),
             sontakiSeviye(),
              SizedBox(height: 50),
            
            
            //new Image.asset("assets/indir__1_-removebg-preview 12.png",width: 250,height: 250),
            ],
            
            
          ),
        ),
      
        
      ),
      
      
    );
  }
}







class sontakiSeviye extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return 
    Center(
                child: ElevatedButton.icon(icon: Icon(Icons.arrow_forward_ios_rounded),style: ButtonStyle(
                 padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 75,vertical: 25)),
            shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )
                              ),
                              backgroundColor: MaterialStateProperty.all(Color(0xFF09CEE9)),
                ),
                  label: Text("Sonraki Seviye",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),),
                  onPressed: (){
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level16()),
            );
                  },
                ),
              );
  }
  
}


class seviyeler extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

  return  Center(
    
                child:ElevatedButton.icon(icon: Icon(Icons.signal_cellular_alt_rounded ,size: 30,),style: ButtonStyle(
                  
                 padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 65,vertical: 25)),
            shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )
                              ),
                              backgroundColor: MaterialStateProperty.all(Color(0xFF48E9FF)),
                ),
                
                  label: Text("Seviyeler",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),),
                  
                  onPressed: (){

                    
 
 
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ortaOkulSeviye()),
            );
                    
                  },
                ),
              );
              

    }

}

