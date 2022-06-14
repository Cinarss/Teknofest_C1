//Değişken tanımla falan filan

/*
ilkOSeviye = ilkokul Seviye


*/





import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teknofest_c1/Seviyeler/ilkOkulSeviyeler.dart';
import 'package:teknofest_c1/coktan_secmeli.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level1.dart';
import 'package:teknofest_c1/levelOrtaOkul/level1.dart';
import 'package:teknofest_c1/levelOrtaOkul/level14.dart';
import 'package:teknofest_c1/levelOrtaOkul/level15.dart';
import 'package:teknofest_c1/levelOrtaOkul/level2.dart';
import 'package:teknofest_c1/oyun%C4%B0ci.dart';

import '../levelOrtaOkul/level10.dart';
import '../levelOrtaOkul/level12.dart';
import '../levelOrtaOkul/level13.dart';
import '../levelOrtaOkul/level11.dart';
import '../levelOrtaOkul/level3.dart';
import '../levelOrtaOkul/level4.dart';
import '../levelOrtaOkul/level5.dart';
import '../levelOrtaOkul/level6.dart';
import '../levelOrtaOkul/level7.dart';
import '../levelOrtaOkul/level8.dart';
import '../levelOrtaOkul/level9.dart';




Icon lockIconOrtaOkul1 = Icon(Icons.lock,color: Colors.black );
Icon lockIconOrtaOkul2 = Icon(Icons.lock,color: Colors.black );
Icon lockIconOrtaOkul3 = Icon(Icons.lock,color: Colors.black );
Icon lockIconOrtaOkul4 = Icon(FontAwesomeIcons.medal,color: Colors.black,);
Icon lockIconOrtaOkul5 = Icon(Icons.lock,color: Colors.black );
Icon lockIconOrtaOkul6 = Icon(Icons.lock,color: Colors.black );
Icon lockIconOrtaOkul7 = Icon(Icons.lock,color: Colors.black );
Icon lockIconOrtaOkul8 = Icon(Icons.lock,color: Colors.black );
Icon lockIconOrtaOkul9 = Icon(FontAwesomeIcons.medal,color: Colors.black,);
Icon lockIconOrtaOkul10 = Icon(Icons.lock,color: Colors.black );
Icon lockIconOrtaOkul11 = Icon(Icons.lock,color: Colors.black );
Icon lockIconOrtaOkul12 = Icon(Icons.lock,color: Colors.black );
Icon lockIconOrtaOkul13 = Icon(Icons.lock,color: Colors.black );
Icon lockIconOrtaOkul14 = Icon(FontAwesomeIcons.medal,color: Colors.black,);
Icon lockIconOrtaOkul15 = Icon(Icons.lock,color: Colors.black );
Icon questionIconOrtaOkul = Icon(Icons.check,size: 30,color: Colors.white );



Color ortaOkulSeviye1Color = Color(0XFF0384FB);
Color ortaOkulSeviye2Color = Color(0X800384FB);
Color ortaOkulSeviye3Color = Color(0X800384FB);
Color ortaOkulSeviye4Color = Color(0X800384FB);
Color ortaOkulSeviye5Color = Color(0X800384FB);

Color ortaOkulSeviye6Color = Color(0X801DFFA0);
Color ortaOkulSeviye7Color = Color(0X801DFFA0);
Color ortaOkulSeviye8Color = Color(0X801DFFA0);
Color ortaOkulSeviye9Color = Color(0X801DFFA0);
Color ortaOkulSeviye10Color = Color(0X801DFFA0);

Color ortaOkulSeviye11Color = Color(0X80F90000);
Color ortaOkulSeviye12Color = Color(0X80F90000);
Color ortaOkulSeviye13Color = Color(0X80F90000);
Color ortaOkulSeviye14Color = Color(0X80F90000);
Color ortaOkulSeviye15Color = Color(0X80F90000);


          
class ortaOkulSeviye extends StatefulWidget {
  ortaOkulSeviye({Key? key}) : super(key: key);

  

  @override
  State<ortaOkulSeviye> createState() => _ortaOkulSeviyeState();
}



class _ortaOkulSeviyeState extends State<ortaOkulSeviye> {


  int _counter = 60;
  Timer? _timer;

  void startTimer() {
    _counter = 60;
    if (_timer != null) {
      _timer?.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
           _counter--;
          print(_counter);
        } else {
          _timer?.cancel();
        }
      });
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         appBar: AppBar(
          title: Text("Ortaokul",style: TextStyle(
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

    if(gelenpuanorta > 12600){
      lockIconOrtaOkul14   = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
      ortaOkulSeviye15Color = Color(0XFFF90000);

      _onTap =() {
        
         ortaOkulCounter = 80;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level30()),
              
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
                               color:ortaOkulSeviye15Color
                               
                                 ),
          
                             child: new Icon(lockIconOrtaOkul4.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
                      ),//............
                  );
  }

  InkWell levels14(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 11700){
      lockIconOrtaOkul13 = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
       ortaOkulSeviye14Color = Color(0XFFF90000);
      _onTap =() {
        ortaOkulCounter = 80;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level29()),
              
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
            color:ortaOkulSeviye14Color
            ),
          
          child: new Icon(lockIconOrtaOkul3.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels13(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 10800){
      lockIconOrtaOkul12 = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
       ortaOkulSeviye13Color = Color(0XFFF90000);
      _onTap =() {
        ortaOkulCounter = 80;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level28()),
              
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
            color:ortaOkulSeviye13Color
            ),
          
          child: new Icon(lockIconOrtaOkul2.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels12(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 9900){
      lockIconOrtaOkul11 = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
       ortaOkulSeviye12Color = Color(0XFFF90000);
      _onTap =() {
        ortaOkulCounter = 80;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level27()),
              
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
            color:ortaOkulSeviye12Color
            ),
          
          child: new Icon(lockIconOrtaOkul11.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels11(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 9000){
      lockIconOrtaOkul10 = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
      ortaOkulSeviye11Color = Color(0XFFF90000);
      _onTap =() {
        
         ortaOkulCounter = 80;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level26()),
              
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
            color:ortaOkulSeviye11Color
            ),
          
          child: new Icon(lockIconOrtaOkul10.icon,size: 30,)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels10(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 8100){
      lockIconOrtaOkul9 = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
      ortaOkulSeviye10Color = Color(0XFF1DFFA0);
      _onTap =() {
        ortaOkulCounter = 80;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level25()),
              
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
            color:ortaOkulSeviye10Color
            ),
          
          child: new Icon(lockIconOrtaOkul9.icon,size: 30,)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels9(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 7200){
      lockIconOrtaOkul8 = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
      ortaOkulSeviye9Color = Color(0XFF1DFFA0);
      _onTap =() {
        ortaOkulCounter = 80;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level24()),
              
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
            color:ortaOkulSeviye9Color
            ),
          
          child: new Icon(lockIconOrtaOkul8.icon,size: 30,)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels8(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 6300){
      lockIconOrtaOkul7 = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
       ortaOkulSeviye8Color = Color(0XFF1DFFA0);
      _onTap =() {
        
         ortaOkulCounter = 80;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level23()),
              
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
            color:ortaOkulSeviye8Color
            ),
          
          child: new Icon(lockIconOrtaOkul7.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels7(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 5400){
      lockIconOrtaOkul6 = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
       ortaOkulSeviye7Color = Color(0XFF1DFFA0);
      _onTap =() {
        
         ortaOkulCounter = 80;
          dene = 1;
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level22()),
              
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
            color:ortaOkulSeviye7Color
            ),
          
          child: new Icon(lockIconOrtaOkul6.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels6(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 4500){
      lockIconOrtaOkul5 = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
       ortaOkulSeviye6Color = Color(0XFF1DFFA0);
      _onTap =() {
        ortaOkulCounter = 80;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level21()),
              
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
            color:ortaOkulSeviye6Color
            ),
          
          child: new Icon(lockIconOrtaOkul5.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels5(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 3600){
      lockIconOrtaOkul4 = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
      ortaOkulSeviye5Color = Color(0XFF0384FB);
      _onTap =() {
        ortaOkulCounter = 80;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level20()),
              
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
            color:ortaOkulSeviye5Color
            ),
          
          child: new Icon(lockIconOrtaOkul4.icon,size: 30,)// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels4(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 2700){
      lockIconOrtaOkul3 = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
      ortaOkulSeviye4Color = Color(0XFF0384FB);
      _onTap =() {
        ortaOkulCounter = 80;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level19()),
              
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
            color:ortaOkulSeviye4Color
            ),
          
          child: new Icon(lockIconOrtaOkul3.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels3(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 1800){
      lockIconOrtaOkul2 = Icon(questionIconOrtaOkul.icon,color: Color.fromARGB(253, 255, 255, 255),);
       ortaOkulSeviye3Color = Color(0XFF0384FB);
      _onTap =() {
        ortaOkulCounter = 80;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level18()),
              
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
            color:ortaOkulSeviye3Color
            ),
          
          child: new Icon(lockIconOrtaOkul2.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels2(BuildContext context) {
    var _onTap;

    if(gelenpuanorta > 900){
      lockIconOrtaOkul1 = Icon(questionIconOrtaOkul.icon,color:Colors.white,);
       ortaOkulSeviye2Color = Color(0XFF0384FB);
      _onTap =() {
        ortaOkulCounter = 80;
          dene = 1;
         
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level17()),
              
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
            color:ortaOkulSeviye2Color
            ),
          
          child: new Icon(lockIconOrtaOkul1.icon,size: 30,),// You can add a Icon instead of text also, like below.
          //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
        ),//............
            );
  }

  InkWell levels1(BuildContext context) {
    return new InkWell(// this is the one you are looking for..........
        onTap: () {
          ortaOkulCounter = 80;
          dene = 1;   
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level16()),
            );
          
        },
        child: new Container(   
          //width: 50.0,
          //height: 50.0,
          padding: const EdgeInsets.all(25.0),//I used some padding without fixed width and height
          decoration: new BoxDecoration(
            shape: BoxShape.circle,// You can use like this way or like the below line
            //borderRadius: new BorderRadius.circular(30.0),
            color:ortaOkulSeviye1Color
            ),
          
          child: new Icon(questionIconOrtaOkul.icon,size: 30,color: Colors.black,)// You can add a Icon instead of text also, like below.
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