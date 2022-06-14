//Değişken tanımla falan filan

/*
ilkOSeviye = ilkokul Seviye


*/





import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teknofest_c1/Seviyeler/ilkOkulSeviyeler.dart';
import 'package:teknofest_c1/coktan_secmeli.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level1.dart';
import 'package:teknofest_c1/levelLise/level1.dart';
import 'package:teknofest_c1/levelLise/level14.dart';
import 'package:teknofest_c1/levelLise/level15.dart';
import 'package:teknofest_c1/levelLise/level2.dart';
import 'package:teknofest_c1/oyun%C4%B0ci.dart';

import '../levelLise/level1.dart';
import '../levelLise/level10.dart';
import '../levelLise/level11.dart';
import '../levelLise/level12.dart';
import '../levelLise/level13.dart';
import '../levelLise/level14.dart';
import '../levelLise/level15.dart';
import '../levelLise/level2.dart';
import '../levelLise/level3.dart';
import '../levelLise/level4.dart';
import '../levelLise/level5.dart';
import '../levelLise/level6.dart';
import '../levelLise/level7.dart';
import '../levelLise/level8.dart';
import '../levelLise/level9.dart';


Icon lockIconLise1 = Icon(Icons.lock,color: Colors.black );
Icon lockIconLise2 = Icon(Icons.lock,color: Colors.black );
Icon lockIconLise3 = Icon(Icons.lock,color: Colors.black );
Icon lockIconLise4 = Icon(FontAwesomeIcons.medal,color: Colors.black, );
Icon lockIconLise5 = Icon(Icons.lock,color: Colors.black );
Icon lockIconLise6 = Icon(Icons.lock,color: Colors.black );
Icon lockIconLise7 = Icon(Icons.lock,color: Colors.black );
Icon lockIconLise8 = Icon(Icons.lock,color: Colors.black );
Icon lockIconLise9 = Icon(FontAwesomeIcons.medal,color: Colors.black, );
Icon lockIconLise10 = Icon(Icons.lock,color: Colors.black );
Icon lockIconLise11 = Icon(Icons.lock,color: Colors.black );
Icon lockIconLise12 = Icon(Icons.lock,color: Colors.black );
Icon lockIconLise13 = Icon(Icons.lock,color: Colors.black );
Icon lockIconLise14 = Icon(FontAwesomeIcons.medal,color: Colors.black,);
Icon lockIconLise15 = Icon(Icons.lock,color: Colors.black );
Icon questionIconLise = Icon(Icons.check,size: 30,color: Colors.white );


Color liseSeviye1Color = Color(0XFF0384FB);
Color liseSeviye2Color = Color(0X800384FB);
Color liseSeviye3Color = Color(0X800384FB);
Color liseSeviye4Color = Color(0X800384FB);
Color liseSeviye5Color = Color(0X800384FB);

Color liseSeviye6Color = Color(0X801DFFA0);
Color liseSeviye7Color = Color(0X801DFFA0);
Color liseSeviye8Color = Color(0X801DFFA0);
Color liseSeviye9Color = Color(0X801DFFA0);
Color liseSeviye10Color = Color(0X801DFFA0);

Color liseSeviye11Color = Color(0X80F90000);
Color liseSeviye12Color = Color(0X80F90000);
Color liseSeviye13Color = Color(0X80F90000);
Color liseSeviye14Color = Color(0X80F90000);
Color liseSeviye15Color = Color(0X80F90000);


          
class liseSeviye extends StatefulWidget {
  liseSeviye({Key? key}) : super(key: key);

  @override
  State<liseSeviye> createState() => _liseSeviyeState();
}

class _liseSeviyeState extends State<liseSeviye> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         appBar: AppBar(
          title: Text("Lise",style: TextStyle(
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

  InkWell levels1(BuildContext context) {
    return new InkWell(// this is the one you are looking for..........
        onTap: () {
         liseCounter = 100;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level31()),
            );
          
        },
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
                     shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
                               color:liseSeviye1Color
                                 ),
          
                             child: new Icon(questionIconLise.icon,size: 30,color: Colors.black,)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
                      ),//............
                  );
  }

  InkWell levels2(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 1300){
      lockIconLise1 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);

       liseSeviye2Color = Color(0XFF0384FB);
      _onTap =() {
        liseCounter = 100;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level32()),
              
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
            color:liseSeviye2Color
            ),
          
          child: new Icon(lockIconLise1.icon,size: 30,)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels3(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 2600){
      lockIconLise2 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
         liseSeviye3Color = Color(0XFF0384FB);
      _onTap =() {
        liseCounter = 100;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level33()),
              
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
            color:liseSeviye3Color
            ),
          
          child: new Icon(lockIconLise2.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels4(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 3900){
      lockIconLise3 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
       liseSeviye4Color = Color(0XFF0384FB);
      _onTap =() {
        
         liseCounter = 100;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level34()),
              
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
            color:liseSeviye4Color
            ),
          
          child: new Icon(lockIconLise3.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels5(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 5200){
      lockIconLise4 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
       liseSeviye5Color = Color(0XFF0384FB);
      _onTap =() {
        liseCounter = 100;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level35()),
              
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
            color:liseSeviye5Color
            ),
          
          child: new Icon(lockIconLise4.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels6(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 6500){
      lockIconLise5 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
       liseSeviye6Color = Color(0XFF1DFFA0);
      _onTap =() {
        
         liseCounter = 100;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level36()),
              
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
            color:liseSeviye6Color
            ),
          
          child: new Icon(lockIconLise5.icon,size: 30,)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels7(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 7800){
      lockIconLise6 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
       liseSeviye7Color = Color(0XFF1DFFA0);
      _onTap =() {
        liseCounter = 100;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level37()),
              
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
            color:liseSeviye7Color
            ),
          
          child: new Icon(lockIconLise6.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels8(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 9100){
      lockIconLise7 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
       liseSeviye8Color = Color(0XFF1DFFA0);
      _onTap =() {
        
         liseCounter = 100;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level38()),
              
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
            color:liseSeviye8Color
            ),
          
          child: new Icon(lockIconLise7.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels9(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 10400){
      lockIconLise8 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
       liseSeviye9Color = Color(0XFF1DFFA0);
      _onTap =() {
        liseCounter = 100;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level39()),
              
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
            color:liseSeviye9Color
            ),
          
          child: new Icon(lockIconLise8.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels10(BuildContext context) {

    var _onTap;

    if(gelenpuanlise >= 11700){
      lockIconLise9 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
     liseSeviye10Color = Color(0XFF1DFFA0);
      _onTap =() {
        liseCounter = 100;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level40()),
              
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
            color:liseSeviye10Color
            ),
          
          child: new Icon(lockIconLise9.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels11(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 13000){
      lockIconLise10 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
      liseSeviye11Color = Color(0XFFF90000);


      _onTap =() {
        
         liseCounter = 100;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level41()),
              
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
            color:liseSeviye11Color
            ),
          
          child: new Icon(lockIconLise10.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels12(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 14300){
      lockIconLise11 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
      liseSeviye12Color = Color(0XFFF90000);
      _onTap =() {
        liseCounter = 100;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level42()),
              
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
            color:liseSeviye12Color
            ),
          
          child: new Icon(lockIconLise11.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels13(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 15600){
      lockIconLise12 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
      liseSeviye13Color = Color(0XFFF90000);
      _onTap =() {
        liseCounter = 100;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level43()),
              
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
            color:liseSeviye13Color
            ),
          
          child: new Icon(lockIconLise12.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels14(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 16900){
      lockIconLise13 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
      liseSeviye14Color = Color(0XFFF90000);
      _onTap =() {
        liseCounter = 100;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level44()),
              
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
            color:liseSeviye14Color
            ),
          
          child: new Icon(lockIconLise13.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels15(BuildContext context) {
    var _onTap;

    if(gelenpuanlise >= 18200){
      lockIconLise14 = Icon(questionIconLise.icon,color: Color.fromARGB(253, 255, 255, 255),);
      liseSeviye15Color = Color(0XFFF90000);
      _onTap =() {
        liseCounter = 100;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level45()),
              
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
            color:liseSeviye15Color
            ),
          
          child: new Icon(lockIconLise14.icon,size: 30,),// You can add a Icon instead of text also, like below.
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