
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level1.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level11.dart';
import 'package:teknofest_c1/levelLise/level1.dart';
import 'package:teknofest_c1/levelLise/level11.dart';
import 'package:teknofest_c1/profil.dart';
import 'package:teknofest_c1/screens/kayitEkrani.dart';
import 'package:teknofest_c1/shared_preferences_manager.dart';
import 'package:teknofest_c1/zorlukSecim.dart';

import '../coktan_secmeli.dart';
import '../screens/girisEkrani.dart';

Timer ?timer;
class level40 extends StatefulWidget {
  level40({Key? key}) : super(key: key);

  @override
  State<level40> createState() => _level40State();
}
class _level40State extends State<level40> {

  List<Widget> secimler = [];


int sorusayisi = 1;

void _startTimer() {
    if (timer != null) {
      timer?.cancel();
    }
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (liseCounter > 0) {
          liseCounter--;
        } 
        else if(liseCounter == 0 ){
          Navigator.push(
              context,
                MaterialPageRoute(builder: (context) =>  seviyeler()),
              );
              puan = 0;
            timer.cancel();
          }
          else {    
            timer.cancel(); 
          }
        });
    });
  }
  @override
  Widget build(BuildContext context) {
    if(dene == 1){
      _startTimer();      
      dene = 0;
    }
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              

              children: <Widget>[
                
                

              Row(
                children: [
                  Text("Puan:$lisePuan",style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),),
                  SizedBox(width:60),
                  Row(
                    children: [
                    Text("Soru:$sorusayisi",textAlign: TextAlign.start,style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,    
                    ),),
  
                    ]

                    
                  ),
                  SizedBox(width: 60),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Text("S??re: $liseCounter",textAlign: TextAlign.start,style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,    
                    ),)
                  
                    ]

                    
                  )
                ],
              )  ,
              

            
                /*
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Puan:150",textAlign: TextAlign.end,style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    
                    ),),
                    
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("S??re:60",textAlign: TextAlign.start,style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      
                    ),),

                    Row( 
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Soru:1",style: TextStyle(
                      color: Colors.black,fontSize: 20),),
                       Container(
                      width: double.infinity,
                    ),
                  ],
                ),
                  ],
                ),
                  ],
                ),
                */

            
                



                Expanded(flex: 3,
                  child: Center(child: Text(benimSorum40.soruMetni(),style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight:FontWeight.w500
                    
                    
                    ),))
                  ),

                  
                     
                    SizedBox(height: 30),

                Expanded(flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 114, 182, 238)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )
                            )
                          ),
                          
                            child: Text(benimSorum40.aSikkiYaz(),style: TextStyle(
                              color: Colors.black,
                              fontSize: 23
                            ),),
                            onPressed: (){
                              setState(() {
                                benimSorum40.liseCevapKontrol("A");
                                benimSorum40.sonrakiSoru();
                                
                                
                                sorusayisi++;
                                
                              });
                              if(sorusayisi >8&& puan >= 1300){
                                  benimSorum40.aktifSoru = 0;
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  oyunSonuKazanma()),
            );
                                }
                                else if(sorusayisi > 8 && puan < 1300){
                                  benimSorum40.aktifSoru = 0;
                                  Navigator.push(
              context,
                            MaterialPageRoute(builder: (context) =>  oyunSonuKaybetmeLise()),
                                           );
                                }
                            },
                          ),
                        ),
                      ),
                
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 114, 182, 238)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )
                            )
                          ),
                            child: Text(benimSorum40.bSikkiYaz(),style: TextStyle(
                              color: Colors.black,
                              fontSize: 23
                            ),),
                            onPressed: (){
                              setState(() {
                                benimSorum40.liseCevapKontrol("B");
                               benimSorum40.sonrakiSoru();
                               sorusayisi++;
                              });
                              if(sorusayisi >8&& puan >= 1300){
                                  benimSorum40.aktifSoru = 0;
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  oyunSonuKazanma()),
            );
                                }
                                else if(sorusayisi > 8 && puan < 1300){
                                  benimSorum40.aktifSoru = 0;
                                  Navigator.push(
              context,
                            MaterialPageRoute(builder: (context) =>  oyunSonuKaybetmeLise()),
                                           );
                                }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 114, 182, 238)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )
                            )
                          ),
                            
                            child: Text(benimSorum40.cSikkiYaz(),style: TextStyle(
                              color: Colors.black,
                              fontSize: 23
                            ),),
                            onPressed: (){
                              setState(() {
                                benimSorum40.liseCevapKontrol("C");
                               benimSorum40.sonrakiSoru();
                               sorusayisi++;
                              });
                              if(sorusayisi >8&& puan >= 1300){
                                  benimSorum40.aktifSoru = 0;
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  oyunSonuKazanma()),
            );
                                }
                                else if(sorusayisi > 8 && puan < 1300){
                                  benimSorum40.aktifSoru = 0;
                                  Navigator.push(
              context,
                            MaterialPageRoute(builder: (context) =>  oyunSonuKaybetmeLise()),
                                           );
                                }
                            },
                          ),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton( style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 114, 182, 238)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),

                              )
                            )
                          ),
                            child: Text(benimSorum40.dSikkiYaz(),style: TextStyle(
                              color: Colors.black,
                              fontSize: 23
                            ),),
                            onPressed: (){
                              setState(() {
                                benimSorum40.liseCevapKontrol("D");
                                benimSorum40.sonrakiSoru();
                                sorusayisi++;
                              });
                              if(sorusayisi >8&& puan >= 1300){
                                  benimSorum40.aktifSoru = 0;
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  oyunSonuKazanma()),
            );
                                }
                                else if(sorusayisi > 8 && puan < 1300){
                                  benimSorum40.aktifSoru = 0;
                                  Navigator.push(
              context,
                            MaterialPageRoute(builder: (context) =>  oyunSonuKaybetmeLise()),
                                           );
                                }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                
               

              ],
            ),
          ),
        ),
      ),
      
    );
  }
}


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
          
               Text("Tebrikler B??l??m?? Ge??tiniz",style:TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w700
              ),),
              SizedBox(height: 30),
              Text("Puan: "+ puan.toString(),
              style: TextStyle(
                fontSize:20,
                color: Colors.black,
                fontWeight: FontWeight.w600 
              ),),
              SizedBox(height: 50),
              seviyeler(),
              SizedBox(height: 50),
             sonrakiSeviye(),
              SizedBox(height: 50),
            
            
            //new Image.asset("assets/indir__1_-removebg-preview 12.png",width: 250,height: 250),
            ],
            
            
          ),
        ),
      
        
      ),
      
      
    );
  }
}







class sonrakiSeviye extends StatefulWidget{
  @override
  State<sonrakiSeviye> createState() => _sonrakiSeviyeState();
}

class _sonrakiSeviyeState extends State<sonrakiSeviye> {
  bilgiGetir(){
    FirebaseFirestore.instance
    .collection("kullanici")
    .doc(email)
    .get()
    .then((gelenVeri) {
      setState(() {
          gelenpuanilk = gelenVeri.data()!["??lkokulPuan"]     ; 
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
  @override
  Widget build(BuildContext context) {
    var _onPressed;
  
    if(puan >= 1300){
      genelPuanLise += puan;
      print(genelPuanLise);
      puan = 0;
      
      
      _onPressed =  (){
        dene = 1;
      timer?.cancel();
      liseCounter = 100;
        liseDisable10Rozet = 1.0;
        bilgiGetir();
        puanGuncelle();
        // veriKaydet();
        Color liseSeviye11Color = Color(0XFFF90000);
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level41()),
            );
                  };
    }
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
                  label: Text("11.Seviye",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),),
                  onPressed: _onPressed,
                ),
              );
  }
}


class seviyeler extends StatefulWidget{
  @override
  State<seviyeler> createState() => _seviyelerState();
}

class _seviyelerState extends State<seviyeler> {
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
                
                  label: Text(" Seviyeler",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),),
                  
                  onPressed: (){

                    setState(() {
                    if(puan < 1300){
                      genelPuanLise - puan;
                      print(genelPuanLise);
                      puan = 0;
                    }  
                    });
 
 
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  lise()),
            );
                    
                  },
                ),
              );
              

    }
}




class oyunSonuKaybetmeLise extends StatefulWidget {
  oyunSonuKaybetmeLise({Key? key}) : super(key: key);

  @override
  State<oyunSonuKaybetmeLise> createState() => _oyunSonuKaybetmeLiseState();
}

class _oyunSonuKaybetmeLiseState extends State<oyunSonuKaybetmeLise> {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       
        body: SafeArea(
        
          child: Column(
          
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("B??l??m?? Ge??emediniz !",style:TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w700
              ),),
              SizedBox(height: 30),
              Text("Puan: "+ puan.toString(),
              style: TextStyle(
                fontSize:20,
                color: Colors.black,
                fontWeight: FontWeight.w600 
              ),),
              SizedBox(height: 50),
              seviyeler(),
              SizedBox(height: 50),
             tekrarOynaLise(),
              SizedBox(height: 50),
            
            
            //new Image.asset("assets/indir__1_-removebg-preview 12.png",width: 250,height: 250),
            ],
            
            
          ),
        ),
      
        
      ),
      
      
    );
  }
}



class tekrarOynaLise extends StatelessWidget{
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
                  label: Text("Tekrar Oyna",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),),
                  onPressed: (){
                      
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  tekrarOynaLise()),
            );
                    genelPuanLise - puan;
                      print(genelPuanLise);
                      puan = 0;
                      benimSorum40.aktifSoru = 0;

                  },
                ),
              );
  }
  
}