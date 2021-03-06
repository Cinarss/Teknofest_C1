
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teknofest_c1/Seviyeler/ilkOkulSeviyeler.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level1.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level3.dart';
import 'package:teknofest_c1/screens/girisEkrani.dart';
import 'package:teknofest_c1/screens/kayitEkrani.dart';
import 'package:teknofest_c1/shared_preferences_manager.dart';
import 'package:teknofest_c1/zorlukSecim.dart';

import '../coktan_secmeli.dart';
import 'package:teknofest_c1/levelİlkOkul/level2.dart';
import 'package:teknofest_c1/main.dart';
//  int kSayi1 = 100;
//   int kSayi2 = 100;
//   int kBirinci = random.nextInt(kSayi1);
//   int kIkinci = random.nextInt(kSayi2);
//   int kToplam = (kBirinci + kIkinci);
// 
// 
// //ORTA Rastgele sayi
// 
// 
//   int oSayi1 = 200;
//   int oSayi2 = 200;
//   int oBirinci = random.nextInt(oSayi1);
//   int oIkinci = random.nextInt(oSayi2);
//   int oToplam = (oBirinci + oIkinci);
// 
// 
// // ZOR Rastgele sayi
//   int zSayi1 = 500;
//   int zSayi2 = 500;
//   int zBirinci = random.nextInt(zSayi1);
//   int zIkinci = random.nextInt(zSayi2);
//   int zToplam = (zBirinci + zIkinci);
// 
// // Carpma 
// 
//   int cSayi1 = 10;
//   int cSayi2 = 10;
//   int cBirinci = random.nextInt(cSayi1);
//   int cIkinci = random.nextInt(cSayi2);
//   int carpma = (cBirinci * cIkinci);
Timer ?timer;

class level2 extends StatefulWidget {
  level2({Key? key}) : super(key: key);

  @override
  State<level2> createState() => _level2State();

    
}
class _level2State extends State<level2> {


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
                    Text("Süre:$counter",textAlign: TextAlign.start,style:GoogleFonts.roboto(
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
                    Text("Süre:60",textAlign: TextAlign.start,style: TextStyle(
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
                  child: Center(child: Text(benimSorum2.soruMetni(),style: TextStyle(
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
                              if(sorusayisi == 1){
                              _startTimer();

                              }
                              setState(() {

//   int kBirinci = random.nextInt(kSayi1);
//   int kIkinci = random.nextInt(kSayi2);
//   int kToplam = (kBirinci + kIkinci);


// //ORTA Rastgele sayi



//   int oBirinci = random.nextInt(oSayi1);
//   int oIkinci = random.nextInt(oSayi2);
//   int oToplam = (oBirinci + oIkinci);



//   int zBirinci = random.nextInt(zSayi1);
//   int zIkinci = random.nextInt(zSayi2);
//   int zToplam = (zBirinci + zIkinci);


//   int cBirinci = random.nextInt(cSayi1);
//   int cIkinci = random.nextInt(cSayi2);
//   int carpma = (cBirinci * cIkinci);
// List<Soru1> Sorular1 =[
//   Soru1(soru_metni: "$kBirinci+$kIkinci",a: "15",b: (kToplam).toString(),c: (kToplam-5).toString(),d: (kToplam-4).toString(),cevap: "B"),
//   Soru1(soru_metni: "$kBirinci+$kIkinci",a: (kToplam+5).toString(),b: (kToplam).toString(),c: (kToplam-2).toString(),d: (kToplam+6).toString(),cevap: "A"),
//   Soru1(soru_metni: "$cBirinci'x'$cIkinci",a: carpma.toString(),b: (carpma-1).toString(),c:(carpma+1).toString(),d: (carpma-4).toString(),cevap: "A"),
//   Soru1(soru_metni: "$kBirinci+$kIkinci",a: (kToplam+5).toString(),b: (kToplam-2).toString(),c: (kToplam-7).toString(),d: (kToplam).toString(),cevap: "D"),
//   Soru1(soru_metni: "$cBirinci'x'$cIkinci",a: (carpma+4).toString(),b:(carpma-2).toString(),c: carpma.toString(),d: (carpma-5).toString(),cevap: "C"),
//   Soru1(soru_metni: "$kBirinci+$kIkinci",a: "35",b: kToplam.toString(),c: (kToplam-4).toString(),d:(kToplam-6).toString(),cevap: "B"),
//   Soru1(soru_metni: "8+38",a: "42",b: "46",c: "46",d: "48",cevap: "C"),
// ];
//   print(kBirinci);
//   print(kToplam);


  
                
                                benimSorum2.cevapKontrol("A");
                                benimSorum2.sonrakiSoru();
                                
                                
                                sorusayisi++;
                                
                              });

                              if(sorusayisi >8 && puan >=650){
                                  benimSorum2.aktifSoru = 0;
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  oyunSonuKazanma()),
            );
                                }
                                else if(sorusayisi > 8 && puan < 650){
                                  benimSorum2.aktifSoru = 0;
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
                            child: Text(benimSorum2.bSikkiYaz(),style: TextStyle(
                              color: Colors.black,
                              fontSize: 23
                            ),),
                            onPressed: (){
                              if(sorusayisi == 1){
                              _startTimer();

                              }
                              setState(() {
                                benimSorum2.cevapKontrol("B");
                               benimSorum2.sonrakiSoru();
                               sorusayisi++;
                              });
                              if(sorusayisi >8 && puan >=650){
                                  benimSorum2.aktifSoru = 0;
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  oyunSonuKazanma()),
            );
                                }
                                else if(sorusayisi > 8 && puan < 650){
                                  benimSorum2.aktifSoru = 0;
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
                            
                            child: Text(benimSorum2.cSikkiYaz(),style: TextStyle(
                              color: Colors.black,
                              fontSize: 23
                            ),),
                            onPressed: (){
                              if(sorusayisi == 1){
                              _startTimer();

                              }
                              setState(() {
                                benimSorum2.cevapKontrol("C");
                               benimSorum2.sonrakiSoru();
                               sorusayisi++;
                              });
                              if(sorusayisi >8 && puan >=650){
                                  benimSorum2.aktifSoru = 0;
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  oyunSonuKazanma()),
            );
                                }
                                else if(sorusayisi > 8 && puan < 650){
                                  benimSorum2.aktifSoru = 0;
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
                            child: Text(benimSorum2.dSikkiYaz(),style: TextStyle(
                              color: Colors.black,
                              fontSize: 23
                            ),),
                            onPressed: (){
                              if(sorusayisi == 1){
                              _startTimer();

                              }
                              setState(() {
                                benimSorum2.cevapKontrol("D");
                                benimSorum2.sonrakiSoru();
                                sorusayisi++;
                              });
                              if(sorusayisi >8 && puan >=650){
                                  benimSorum2.aktifSoru = 0;
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  oyunSonuKazanma()),
            );
                                }
                                else if(sorusayisi > 8 && puan < 650){
                                  benimSorum2.aktifSoru = 0;
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
          
              Text("Tebrikler Bölümü Geçtiniz",style:TextStyle( 
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
              Text("Bölümü Geçemediniz !",style:TextStyle(
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




class sonrakiSeviye extends StatefulWidget{
  @override
  State<sonrakiSeviye> createState() => _sonrakiSeviyeState();
}

class _sonrakiSeviyeState extends State<sonrakiSeviye> {
  @override
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
          kullaniciAdi = gelenVeri.data()!["KullaniciAdi"];
      });
    });
  }

  Widget build(BuildContext context) {
    var _onPressed;
  
    if(puan >= 80){
      genelPuan += puan;
      puan = 0;
      
      _onPressed =  (){
        dene =1;
      timer?.cancel();
      counter = 60;
        // veriKaydet();
        bilgiGetir();
        puanGuncelle();
   
        seviye3Color = Color(0XFF0384FB);
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  level3()),
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
                  label: Text("3.Seviye",style: TextStyle(
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
                    benimSorum2.aktifSoru = 0;
                        bilgiGetir();
                        puanGuncelle();
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




class tekrarOyna extends StatefulWidget{
  @override
  State<tekrarOyna> createState() => _tekrarOynaState();
}

class _tekrarOynaState extends State<tekrarOyna> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
            timer?.cancel();
          }
          else {    
            timer?.cancel(); 
          }
        });
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
                      benimSorum2.aktifSoru = 0;

                  },
                ),
              );
  }
}