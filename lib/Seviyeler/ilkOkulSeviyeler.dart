//Değişken tanımla falan filan

// ignore_for_file: unnecessary_new

/*
ilkOSeviye = ilkokul Seviye


*/





import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teknofest_c1/coktan_secmeli.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level11.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level2.dart';
import 'package:teknofest_c1/levelLise/level1.dart';

import 'package:teknofest_c1/oyun%C4%B0ci.dart';
import 'package:teknofest_c1/shared_preferences_manager.dart';


import '../levelOrtaOkul/level1.dart';
import '../levelİlkOkul/level1.dart';
import '../levelİlkOkul/level10.dart';
import '../levelİlkOkul/level12.dart';
import '../levelİlkOkul/level13.dart';
import '../levelİlkOkul/level14.dart';
import '../levelİlkOkul/level15.dart';
import '../levelİlkOkul/level3.dart';
import '../levelİlkOkul/level4.dart';
import '../levelİlkOkul/level5.dart';
import '../levelİlkOkul/level6.dart';
import '../levelİlkOkul/level7.dart';
import '../levelİlkOkul/level8.dart';
import '../levelİlkOkul/level9.dart';




var sure;

Icon lockIcon1 = Icon(Icons.lock,color: Colors.black );
Icon lockIcon2 = Icon(Icons.lock,color: Colors.black );
Icon lockIcon3 = Icon(Icons.lock,color: Colors.black );
Icon lockIcon4 = Icon(FontAwesomeIcons.medal,color: Colors.black,);
Icon lockIcon5 = Icon(Icons.lock,color: Colors.black );
Icon lockIcon6 = Icon(Icons.lock,color: Colors.black );
Icon lockIcon7 = Icon(Icons.lock,color: Colors.black );
Icon lockIcon8 = Icon(Icons.lock,color: Colors.black );
Icon lockIcon9 = Icon(FontAwesomeIcons.medal,color: Colors.black, );
Icon lockIcon10 = Icon(Icons.lock,color: Colors.black );
Icon lockIcon11 = Icon(Icons.lock,color: Colors.black );
Icon lockIcon12 = Icon(Icons.lock,color: Colors.black );
Icon lockIcon13 = Icon(Icons.lock,color: Colors.black );
Icon lockIcon14 = Icon(FontAwesomeIcons.medal,color: Colors.black,);
Icon lockIcon15 = Icon(Icons.lock,color: Colors.black );
Icon questionIcon = Icon(Icons.check,size: 30,color: Colors.white );



Color seviye1Color = Color(0XFF0384FB);
Color seviye2Color = Color(0X800384FB);
Color seviye3Color = Color(0X800384FB);
Color seviye4Color = Color(0X800384FB);
Color seviye5Color = Color(0X800384FB);

Color seviye6Color = Color(0X801DFFA0);
Color seviye7Color = Color(0X801DFFA0);
Color seviye8Color = Color(0X801DFFA0);
Color seviye9Color = Color(0X801DFFA0);
Color seviye10Color = Color(0X801DFFA0);

Color seviye11Color = Color(0X80F90000);
Color seviye12Color = Color(0X80F90000);
Color seviye13Color = Color(0X80F90000);
Color seviye14Color = Color(0X80F90000);
Color seviye15Color = Color(0X80F90000);




          
class ilkOkulSeviye extends StatefulWidget {
  ilkOkulSeviye({Key? key}) : super(key: key);
  
  Color _color = Colors.white;
  
  renkOlustur(Color color){
    
    this._color = color;
    
  }

  @override
  State<ilkOkulSeviye> createState() => _ilkOkulSeviyeState();
}

class _ilkOkulSeviyeState extends State<ilkOkulSeviye> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("İlkokul",style: TextStyle(
            fontSize: 25,

          ),),
          centerTitle: true,
        ),
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    
                    child: Row(
                      
                      children: <Widget>[
                        
                        Expanded(child: 
                      
                        levels1(context) 
                        ),
        
        
                        Expanded(child:
                        
                        levels2(context),
                        
                         ),
                        Expanded(child: levels3(context),),
        
                       
                      ],
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  Row(
                      children: <Widget>[
                        Expanded(child: levels4(context),),
                        Expanded(child: levels5(context),),
                        Expanded(child: 
                        levels6(context),),
                      ],
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(child: levels7(context),),
                        Expanded(child: levels8(context),),
                        Expanded(child:levels9(context),),
                      ],
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(child:levels10(context),),
                        Expanded(child: levels11(context),),
                        Expanded(child: levels12(context),),
                      ],
                    ),
                  ),
        
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(child:levels13(context),),
                        Expanded(child:levels14(context),),

                        Expanded(child: levels15(context),),
                      ],
                    ),
                  ),
                ],
              )
            ),
          ),
        ),
      ),
    );
  }

  InkWell levels15(BuildContext context) {
    
    var _onTap;

    if(gelenpuanilk >= 1400){
      lockIcon14 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);
      seviye15Color = Color(0XFFF90000);

      _onTap =() {
          
         counter = 60;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level15()),
              
            );
            
          
        };

        
    }

    
    return new InkWell(// this is the one you are looking for..........
        onTap: _onTap,
        child: new Container(   
          
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye15Color
            ),
          
          child: new Icon(lockIcon14.icon,size: 30,) // You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels14(BuildContext context) {

     var _onTap;

    if(gelenpuanilk > 8450){
      lockIcon13 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);
      seviye14Color = Color(0XFFF90000);
      _onTap =() {
          
         counter = 60;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level14()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
        onTap: _onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye14Color
            ),
          
          child: new Icon(lockIcon13.icon,size: 30,)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels13(BuildContext context) {
     var _onTap;

    if(gelenpuanilk > 7800){
      lockIcon12 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);
       seviye13Color = Color(0XFFF90000);
      _onTap =() {
          counter = 60;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level13()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
        onTap: _onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye13Color
            ),
          
          child: new Icon(lockIcon12.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels12(BuildContext context) {
     var _onTap;

    if(gelenpuanilk > 7150){
      seviye12Color = Color(0XFFF90000);
      lockIcon11 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);
      _onTap =() {
          
         counter = 60;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level12()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
        onTap: _onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye12Color
            ),
          
          child: new Icon(lockIcon11.icon,size: 30,)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels11(BuildContext context) {
     var _onTap;

    if(gelenpuanilk > 6500){
      seviye11Color = Color(0XFFF90000);
      lockIcon10 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);
      _onTap =() {
          
         counter = 60;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level11()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
        onTap:_onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye11Color
            ),
          
          child: new Icon(lockIcon10.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels10(BuildContext context) {
     var _onTap;

    if(gelenpuanilk > 5850){
      seviye10Color = Color(0XFF1DFFA0);
      lockIcon9 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);

      _onTap =() {
          counter = 60;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level10()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
        onTap: _onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye10Color
            ),
          
          child: new Icon(lockIcon9.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels9(BuildContext context) {
     var _onTap;

    if(gelenpuanilk > 5200){
      lockIcon8 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);
       seviye9Color = Color(0XFF1DFFA0);
      _onTap =() {
          counter = 60;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level9()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
        onTap: _onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye9Color
            ),
          
          child: new Icon(lockIcon8.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels8(BuildContext context) {
     var _onTap;

    if(gelenpuanilk > 4550){
      lockIcon7 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);
       seviye8Color = Color(0XFF1DFFA0);
      _onTap =() {
          counter = 60;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level8()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
        onTap: _onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye8Color
            ),
          
          child: new Icon(lockIcon7.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels7(BuildContext context) {
     var _onTap;

    if(gelenpuanilk > 3900){
      lockIcon6 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);
       seviye7Color = Color(0XFF1DFFA0);
      _onTap =() {
          counter = 60;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level7()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
        onTap: _onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye7Color
            ),
          
          child: new Icon(lockIcon6.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels6(BuildContext context) {
     var _onTap;

    if(gelenpuanilk > 3250){
      seviye6Color = Color(0XFF1DFFA0);
      lockIcon5 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);

      _onTap =() {
          counter = 60;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level6()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
        onTap: _onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye6Color
            ),
          
          child: new Icon(lockIcon5.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels5(BuildContext context) {
     var _onTap;

    if(gelenpuanilk > 2600){
      lockIcon4 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);
       seviye5Color = Color(0XFF0384FB);

      _onTap =() {
          
         counter = 60;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level5()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
        onTap: _onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye5Color
            ),
          
          child: new Icon(lockIcon4.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels4(BuildContext context) {
     var _onTap;

    if(gelenpuanilk > 1950){
      lockIcon3 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);
      seviye4Color = Color(0XFF0384FB);
      _onTap =() {
          counter = 60;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level4()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
        onTap: _onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye4Color
            ),
          
          child: new Icon(lockIcon3.icon,size: 30,)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels3(BuildContext context) {
     var _onTap;

    if(gelenpuanilk > 1300){
      lockIcon2 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);
          seviye3Color = Color(0XFF0384FB);
      _onTap =() {
        counter = 60;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level3()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
        onTap: _onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye3Color
            ),
          
          child: new Icon(lockIcon2.icon,size: 30,)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels2(BuildContext context) {
    var _onTap;

    if(gelenpuanilk >= 650){
      
      lockIcon1 = Icon(questionIcon.icon,color: Color.fromARGB(253, 255, 255, 255),);
      seviye2Color = Color(0XFF0384FB);
      _onTap =() {
        counter = 60;
          dene = 1;
        
          
       
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level2()),
              
            );
            
          
        };

        
    }
    return new InkWell(// this is the one you are looking for..........
    
        onTap: _onTap,
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:seviye2Color
            ),
          
          child: new Icon(lockIcon1.icon,size: 30,)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels1(BuildContext context) {

     
    return new InkWell(// this is the one you are looking for..........
        onTap: (){
          counter = 60;
          dene = 1;
//           myStreamFunction().listen((event) {
//                                 print(event);
//                                 setState(() {
//                                 sure = event;
//                                   
//                                 });
// 
//                               });
           
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level1()),
              
            );
        },
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
                     shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
                               color:seviye1Color
                                 ),
          
                             child: Icon(questionIcon.icon,size: 30,color: Colors.black)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
                      ),//............
                  );
  }

  
}




// class seviyeOlustur extends StatelessWidget{
//   String _isim  = "";
//   Color _color = Colors.white;
  
//   seviyeOlustur(String isim,Color color){
//     this._isim = isim;
//     this._color = color;
    
//   }
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return 
//      new InkWell(// this is the one you are looking for..........
//         onTap: () {
//         Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) =>  myApp()),
//             );
          
//         },
//         child: new Container(   
//           //width: 50.0,
//           //height: 50.0,
//           padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
//           decoration: new BoxDecoration(
//             shape: BoxShape.circle,// You can use like this way or like the below line
//             //borderRadius: new BorderRadius.circular(30.0),
//             color: _color
//             ),
          
//           child: new Text(_isim, style: new TextStyle(color: Colors.white, fontSize: 25.0),textAlign: TextAlign.center,),// You can add a Icon instead of text also, like below.
//           //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
//         ),//............
//       );
//   }

// }