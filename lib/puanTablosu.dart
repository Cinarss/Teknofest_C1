import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teknofest_c1/coktan_secmeli.dart';

var disableRozet = .4;
var enabledRozet = 1.0;

class puanTablosu extends StatefulWidget {
  puanTablosu({Key? key}) : super(key: key);

  @override
  State<puanTablosu> createState() => _puanTablosuState();
}

class _puanTablosuState extends State<puanTablosu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Yakında...:)",textAlign: TextAlign.center,style:GoogleFonts.roboto(
                    color: Color(0xFF000000),
                    fontSize: 50,
                    fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 30,),
            

            
          ],

          

        ),
      ),
    );

    
  }
}





class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => new _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
       
      ),
    );
  }
}

