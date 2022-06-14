

import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level1.dart';
import 'package:teknofest_c1/oyunİci.dart';
import 'package:teknofest_c1/profil.dart';
import 'package:teknofest_c1/puanTablosu.dart';
import 'package:teknofest_c1/screens/girisEkrani.dart';
import 'package:teknofest_c1/screens/kayitEkrani.dart';
import 'package:teknofest_c1/shared_preferences_manager.dart';
import 'package:teknofest_c1/zorlukSecim.dart';

import 'coktan_secmeli.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_fonts/google_fonts.dart';

// 

const deneme =  Color(0xFFFFC54D);

// 

int ses = 0;



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.dark,
      primaryColor: Colors.blue[800],
    ),
    
    
    home: GirisEkrani(),
  ));
}

// 
//  class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
// 
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme:ThemeData(
//         primarySwatch:Colors.blue ,
//         visualDensity:VisualDensity.adaptivePlatformDensity
//       ),
//       home: LoginPage(),
//     );
//   }
// }
// 
// 




//  TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
// 
// 
// 
// girisYap(){
//   FirebaseAuth.instance
//   .signInWithEmailAndPassword(email: emailController.text, password: passwordController.text)
//   .then((kullanici){
//     print("Hoşgeldin");
//   });
// }
//   Future<void> main() async{
//     WidgetsFlutterBinding.ensureInitialized();
//     await Firebase.initializeApp();
//     runApp(MyApp());
//   }
// 
// 
// 
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: Iskele(),
//     );
//   }
// 
// }
// 
// 
// class Iskele extends StatefulWidget {
//   Iskele({Key? key}) : super(key: key);
// 
//   @override
//   State<Iskele> createState() => _IskeleState();
// }
// 
// class _IskeleState extends State<Iskele> {
//  
// 
// Future<void> kayitol() async{
//  await FirebaseAuth.instance
//  .createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((kullanici){
//    FirebaseFirestore.instance.collection("Kullanicilar").doc(emailController.text).set({"KullaniciEposta":emailController.text,"KullaniciSifre":passwordController.text});
//  });
// }
// 
// 
// 
// 
//   
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.all(50),
//         child: Center(child: Column(  
//           children: <Widget>[
//             
//             
//             Row(
//               children: <Widget>[
//                 // ElevatedButton(onPressed:kayitol, child: Text("Kaydol")),
//                 // ElevatedButton(onPressed: girisYap, child: Text("Giriş")),
//                 
//               ],),
// 
//               
//           ],
//         )),
//       ),
//     );
//   }
// }









class KayitUygulama extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return KayitEkrani();
  }

}






// 
// 
// 

var currentIndex = 0;



class anasayfa extends StatefulWidget {
  anasayfa({Key? key}) : super(key: key);

  @override
  State<anasayfa> createState() => _anasayfaState();
}
 

class _anasayfaState extends State<anasayfa> {

bilgiGetir(){
    FirebaseFirestore.instance
    .collection("kullanici")
    .doc(email)
    .get()
    .then((gelenVeri) {
      setState(() {
          gelenpuanilk = gelenVeri.data()!["İlkokulPuan"]     ; 
          gelenpuanorta = gelenVeri.data()!["Ortaokul"]      ;
          gelenpuanlise = gelenVeri.data()!["Lise"] ;     
          gelenpuantoplam = gelenVeri.data()!["Toplam"];
          kullaniciAdi = gelenVeri.data()!["KullaniciAdi"].toString();

          ilkokul5rozet = gelenVeri.data()!["ilkokul5Rozet"];
          ilkokul10rozet = gelenVeri.data()!["ilkokul10Rozet"];
          ilkokul15rozet = gelenVeri.data()!["ilkokul15Rozet"];

          ortaokul5rozet = gelenVeri.data()!["ortaokul5Rozet"];
          ortaokul10rozet = gelenVeri.data()!["ortaokul10Rozet"];
          ortaokul15rozet = gelenVeri.data()!["ortaokul15Rozet"];

          lise5rozet = gelenVeri.data()!["lise5Rozet"];
          lise10rozet = gelenVeri.data()!["lise10Rozet"];
          lise15rozet = gelenVeri.data()!["lise15Rozet"];
          

      });
    });
  }
final screens = [
  Center(child:home(),),
  Center(child:zorluk(),),
  Center(child:puanTablosu(),),
  Center(child: profil(),)
];




  
  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      
      home: Scaffold(
        
        body: screens[currentIndex],
          
         
        
      bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 35),label: "Anasayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.gamepad,size: 35),label: "Oyun"),
          BottomNavigationBarItem(icon: Icon(Icons.table_rows_rounded,size: 35,),label: "Puan Tablosu"),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded,size: 35,),label: "Profil"),
          
          
        ],
        currentIndex: currentIndex,
        onTap:(index){
                if(ses == 2){
                advancedPlayer.resume();
                    ses = 0;
                  }
          
        // veriOku();
          setState(() {
          bilgiGetir();
            currentIndex = index;
            if(puan < 140){
              puan = 0;
              soruSifirla();
            }

          });
        },
        showUnselectedLabels: false,
        unselectedFontSize:20,
        selectedFontSize: 20,
        selectedItemColor: Color(0xFF09CEE9),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle:TextStyle(color: Colors.black)),
          
        
      ),
      
      
          
    );
  }
}




class home extends StatefulWidget{
  
  
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  
  @override
  
  Widget build(BuildContext context) {
    advancedPlayer.play(kUrl1);
    
  
    
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(146, 0, 130, 251),
        body: SafeArea(

        
       child: Column(
         
         
        
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("C1 Oyununa hoşgeldin",style:GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
              ),),
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 100,
                  child: Image.asset("assets/logoHome.png")
                ),
              ),
              oyunB(),
              SizedBox(height: 50),
             puanT(),
            

            
            ],

            
        )

        
            
          ),
      ),
    );
    
  }
}


class oyunB extends StatefulWidget{
  @override
  State<oyunB> createState() => _oyunBState();
}

class _oyunBState extends State<oyunB> {
  @override
  Widget build(BuildContext context) {
    return 
    Center(
                child: ElevatedButton(style: ButtonStyle(
                 padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 65,vertical: 25)),
            shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )
                              ),
                              backgroundColor: MaterialStateProperty.all(Color(0xFF09CEE9)),
                ),
                  child: Text("Oyuna Başla",style:GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
              ),),
                  
                  onPressed: (){

                    
                    if(ses == 2){
                advancedPlayer.resume();
                    ses = 0;
                  }
                    // veriOku();
                    
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  zorluk()),
            );
                  },
                ),
              );
  }
}




class puanT extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

  return  Center(
                child:ElevatedButton(style: ButtonStyle(
                 padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 65,vertical: 25)),
            shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )
                              ),
                              backgroundColor: MaterialStateProperty.all(Color(0xFF00FFB2)),
                ),
                  child: Text("Puan Tablosu",style:GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
              ),),
                  onPressed: (){  
                    advancedPlayer.play(kUrl1);
                    // veriOku();
                    

                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  puanTablosu()),
            );
                    
                  },
                ),
              );

    }

}


void soruSifirla(){
  benimSorum1.aktifSoru = 0;
  benimSorum2.aktifSoru = 0;
  benimSorum3.aktifSoru = 0;
  benimSorum4.aktifSoru = 0;
  benimSorum5.aktifSoru = 0;
  benimSorum6.aktifSoru = 0;
  benimSorum7.aktifSoru = 0;
  benimSorum8.aktifSoru = 0;
  benimSorum9.aktifSoru = 0;
  benimSorum10.aktifSoru = 0;
  benimSorum11.aktifSoru = 0;
  benimSorum12.aktifSoru = 0;
  benimSorum13.aktifSoru = 0;
  benimSorum14.aktifSoru = 0;
  benimSorum15.aktifSoru = 0;
  benimSorum16.aktifSoru = 0;
  benimSorum17.aktifSoru = 0;
  benimSorum18.aktifSoru = 0;
  benimSorum19.aktifSoru = 0;
  benimSorum20.aktifSoru = 0;
  benimSorum21.aktifSoru = 0;
  benimSorum22.aktifSoru = 0;
  benimSorum23.aktifSoru = 0;
  benimSorum24.aktifSoru = 0;
  benimSorum25.aktifSoru = 0;
  benimSorum26.aktifSoru = 0;
  benimSorum27.aktifSoru = 0;
  benimSorum28.aktifSoru = 0;
  benimSorum29.aktifSoru = 0;
  benimSorum30.aktifSoru = 0;
  benimSorum31.aktifSoru = 0;
  benimSorum32.aktifSoru = 0;
  benimSorum33.aktifSoru = 0;
  benimSorum34.aktifSoru = 0;
  benimSorum35.aktifSoru = 0;
  benimSorum36.aktifSoru = 0;
  benimSorum37.aktifSoru = 0;
  benimSorum38.aktifSoru = 0;
  benimSorum39.aktifSoru = 0;
  benimSorum40.aktifSoru = 0;
  benimSorum41.aktifSoru = 0;
  benimSorum42.aktifSoru = 0;
  benimSorum43.aktifSoru = 0;
  benimSorum44.aktifSoru = 0;
  benimSorum45.aktifSoru = 0;
}