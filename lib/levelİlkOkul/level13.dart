
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teknofest_c1/Seviyeler/ilkOkulSeviyeler.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level14.dart';
import 'package:teknofest_c1/screens/girisEkrani.dart';
import 'package:teknofest_c1/screens/kayitEkrani.dart';
import 'package:teknofest_c1/shared_preferences_manager.dart';

import '../coktan_secmeli.dart';
import '../zorlukSecim.dart';
import 'level1.dart';
 Timer ?timer;

class level13 extends StatefulWidget {
  level13({Key? key}) : super(key: key);

  @override
  State<level13> createState() => _level13State();
}
class _level13State extends State<level13> {

  List<Widget> secimler = [];


int sorusayisi = 1;

  void _startTimer() {
    if (timer != null) {
      timer?.cancel();
    }
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (counter > 0) {
          counter--;
        } 
        else if(counter == 0 ){
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
                  Text("Puan:$puan",style:GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
              ),),
                  SizedBox(width:60),
                  Row(
                    children: [
                    Text("Soru:$sorusayisi",textAlign: TextAlign.start,style:GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
              ),),
  
                    ]

                    
                  ),
                  SizedBox(width: 60),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Text("S??re: $counter",textAlign: TextAlign.start,style:GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
              ),),
                  
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
                  child: Center(child: Text(benimSorum13.soruMetni(),style: TextStyle(
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
                          
                            child: Text(benimSorum2.aSikkiYaz(),style: TextStyle(
                              color: Colors.black,
                              fontSize: 23
                            ),),
                            onPressed: (){
                              setState(() {
                                benimSorum13.cevapKontrol("A");
                                benimSorum13.sonrakiSoru();
                                
                                
                                sorusayisi++;
                                
                              });
                              if(sorusayisi >8&& puan >= 650){
                                  benimSorum13.aktifSoru = 0;
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  oyunSonuKazanma()),
            );
                                }
                                else if(sorusayisi > 8 && puan < 650){
                                  benimSorum13.aktifSoru = 0;
                                  Navigator.push(
              context,
                            MaterialPageRoute(builder: (context) =>  oyunSonuKaybetme()),
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
                            child: Text(benimSorum13.bSikkiYaz(),style: TextStyle(
                              color: Colors.black,
                              fontSize: 23
                            ),),
                            onPressed: (){
                              setState(() {
                                benimSorum13.cevapKontrol("B");
                               benimSorum13.sonrakiSoru();
                               sorusayisi++;
                              });
                              if(sorusayisi >8&& puan >= 650){
                                  benimSorum13.aktifSoru = 0;
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  oyunSonuKazanma()),
            );
                                }
                                else if(sorusayisi > 8 && puan < 650){
                                  benimSorum13.aktifSoru = 0;
                                  Navigator.push(
              context,
                            MaterialPageRoute(builder: (context) =>  oyunSonuKaybetme()),
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
                            
                            child: Text(benimSorum13.cSikkiYaz(),style: TextStyle(
                              color: Colors.black,
                              fontSize: 23
                            ),),
                            onPressed: (){
                              setState(() {
                                benimSorum13.cevapKontrol("C");
                               benimSorum13.sonrakiSoru();
                               sorusayisi++;
                              });
                              if(sorusayisi >8&& puan >= 650){
                                  benimSorum13.aktifSoru = 0;
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  oyunSonuKazanma()),
            );
                                }
                                else if(sorusayisi > 8 && puan < 650){
                                  benimSorum13.aktifSoru = 0;
                                  Navigator.push(
              context,
                            MaterialPageRoute(builder: (context) =>  oyunSonuKaybetme()),
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
                            child: Text(benimSorum13.dSikkiYaz(),style: TextStyle(
                              color: Colors.black,
                              fontSize: 23
                            ),),
                            onPressed: (){
                              setState(() {
                                benimSorum13.cevapKontrol("D");
                                benimSorum13.sonrakiSoru();
                                sorusayisi++;
                              });
                              if(sorusayisi >8&& puan >= 650){
                                  benimSorum13.aktifSoru = 0;
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  oyunSonuKazanma()),
            );
                                }
                                else if(sorusayisi > 8 && puan < 650){
                                  benimSorum13.aktifSoru = 0;
                                  Navigator.push(
              context,
                            MaterialPageRoute(builder: (context) =>  oyunSonuKaybetme()),
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
          kullaniciAdi = gelenVeri.data()!["KullaniciAdi"];
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var  _onPressed ;
    if(puan >= 80){
      genelPuan += puan;
      puan = 0;
      
      _onPressed =  (){
        dene = 1;
        timer?.cancel();
      counter = 60;
        bilgiGetir();
        puanGuncelle();
        // veriKaydet();
        Color seviye14Color = Color(0XFFF90000);
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level14()),
            );
                  };
    }
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
                  label: Text("14.Seviye",style: TextStyle(
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
                    benimSorum13.aktifSoru = 0;
                    if(puan >= 650){
                      // veriKaydet();
                      genelPuan += puan;
                      print(genelPuan);
                      puan = 0;

                    }
                   setState(() {
                      if(puan < 650){
                      genelPuan - puan;
                      print(genelPuan);
                      puan = 0;
                    }
                    });

                    
 
 
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  zorluk()),
            );
                    
                  },
                ),
              );
              

    }
}




class oyunSonuKaybetme extends StatefulWidget {
  oyunSonuKaybetme({Key? key}) : super(key: key);

  @override
  State<oyunSonuKaybetme> createState() => _oyunSonuKaybetmeState();
}

class _oyunSonuKaybetmeState extends State<oyunSonuKaybetme> {

  
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
             tekrarOyna(),
              SizedBox(height: 50),
            
            
            //new Image.asset("assets/indir__1_-removebg-preview 12.png",width: 250,height: 250),
            ],
            
            
          ),
        ),
      
        
      ),
      
      
    );
  }
}


class tekrarOyna extends StatelessWidget{
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
              MaterialPageRoute(builder: (context) =>  ilkOkulSeviye()),
            );
                    genelPuan - puan;
                      print(genelPuan);
                      puan = 0;
                      benimSorum13.aktifSoru = 0;

                  },
                ),
              );
  }
  
}