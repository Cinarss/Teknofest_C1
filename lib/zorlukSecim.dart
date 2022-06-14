

import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:teknofest_c1/Seviyeler/ilkOkulSeviyeler.dart';
import 'package:teknofest_c1/Seviyeler/liseSeviyeler.dart';
import 'package:teknofest_c1/Seviyeler/ortaOkulSeviyler.dart';
import 'package:teknofest_c1/oyunİci.dart';
import 'package:teknofest_c1/shared_preferences_manager.dart';

import 'coktan_secmeli.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class zorluk extends StatefulWidget {
  zorluk({Key? key}) : super(key: key);

  @override
  State<zorluk> createState() => _zorlukState();
}

class _zorlukState extends State<zorluk> {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF0083FB),
       
        body: SafeArea(
        
          child: Column(
          
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text("Seviye Seç", style:  GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),),
                height: 100,
              ),
          
              ilkO(),
              SizedBox(height: 50),
             ortaO(),
              SizedBox(height: 50),
              lise()
            
            //new Image.asset("assets/indir__1_-removebg-preview 12.png",width: 250,height: 250),
            ],
            
            
          ),
        ),
      
        
      ),
      
      
    );
  }
}







class ilkO extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return 
    Center(
                child: ElevatedButton(style: ButtonStyle(
                 padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 75,vertical: 25)),
            shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )
                              ),
                              backgroundColor: MaterialStateProperty.all(Color(0xFF09CEE9)),
                ),
                  child: Text("İlkokul",style:GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
              ),),
                  onPressed: (){
                    
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ilkOkulSeviye()),
            );
                  },
                ),
              );
  }
  
}



class ortaO extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

  return  Center(
                child:ElevatedButton(style: ButtonStyle(
                 padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 65,vertical: 25)),
            shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )
                              ),
                              backgroundColor: MaterialStateProperty.all(Color(0xFF48E9FF)),
                ),
                  child: Text("Ortaokul",style:GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
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


class lise extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

  return  Center(
                child:ElevatedButton(style: ButtonStyle(
                 padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 85,vertical: 25)),
            shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )
                              ),
                              backgroundColor: MaterialStateProperty.all(Color(0xFF00FFB2)),
                ),
                  child: Text("Lise",style:GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
              ),),
                  onPressed: (){
                    

                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  liseSeviye()),
            );
                  },
                ),
              );

    }

}