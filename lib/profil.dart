import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teknofest_c1/Seviyeler/liseSeviyeler.dart';
import 'package:teknofest_c1/Seviyeler/ortaOkulSeviyler.dart';
import 'package:teknofest_c1/coktan_secmeli.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level1.dart';
import 'package:teknofest_c1/puanTablosu.dart';
import 'package:teknofest_c1/screens/girisEkrani.dart';
import 'package:teknofest_c1/screens/kayitEkrani.dart';
import 'package:teknofest_c1/zorlukSecim.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Seviyeler/ilkOkulSeviyeler.dart';

var ilkokulDisable5Rozet = .4;
var ilkokulDisable10Rozet = .4;
var ilkokulDisable15Rozet = .4;
var ilkokulEnabledRozet = 1.0;

var ortaokulDisable5Rozet = .4;
var ortaokulDisable10Rozet = .4;
var ortaokulDisable15Rozet = .4;
var ortaokulEnabledRozet = 1.0;

var liseDisable5Rozet = .4;
var liseDisable10Rozet = .4;
var liseDisable15Rozet = .4;
var liseEnabledRozet = 1.0;



class profil extends StatefulWidget {
  profil({Key? key}) : super(key: key);

  @override
  State<profil> createState() => _profilState();
}


class _profilState extends State<profil> {
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
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 73, 138),
        body: SingleChildScrollView(
          child: SafeArea(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Profil",style:GoogleFonts.roboto(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                ),),
                    ),
                  SizedBox(height:30),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
              child: Row(
                    
                    
                    
                    children: <Widget>[
                      Icon(Icons.person_rounded,size: 45,color: Color.fromARGB(255, 255, 255, 255),),
                      SizedBox(width: 10,),
                      Text(kullaniciAdi,style:GoogleFonts.roboto(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                ),),
                    ],
                  ),
                  ),
                ),
                
                SizedBox(height: 30,),
                Row(
                  children: <Widget>[
                    
                Text("Toplam puan: ",style:GoogleFonts.roboto(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                ),),
                Text( (gelenpuanilk + gelenpuanlise + gelenpuanorta).toString(),style: TextStyle(
                  color: Color.fromARGB(255, 193, 193, 193),
                  fontSize: 25,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),
                SizedBox(height: 30,),
        
                Row(
                  children: <Widget>[
        
                Text("İlkokul Puanı: " ,style:GoogleFonts.roboto(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                ),),
                Text(gelenpuanilk.toString(),style: TextStyle(
                  color: Color.fromARGB(255, 193, 193, 193),
                  fontSize: 25,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),
                 Row(
              children: <Widget>[
                Image(image: AssetImage("assets/ilkokul5seviyeRozet.png"),width: 55,height: 55,color: Colors.white.withOpacity(ilkokul5rozet), colorBlendMode: BlendMode.modulate),
                Image(image: AssetImage("assets/ilkokul10seviyeRozet.png"),width: 55,height: 55,color: Colors.white.withOpacity(ilkokul10rozet), colorBlendMode: BlendMode.modulate),
                Image(image: AssetImage("assets/ilkokul15seviyeRozet.png"),width: 55,height: 55,color: Colors.white.withOpacity(ilkokul15rozet), colorBlendMode: BlendMode.modulate)
              ],
            ),
        
                SizedBox(height: 20,),
                Row(
                  children: <Widget>[
        
                Text("Ortaokul Puanı: " ,style:GoogleFonts.roboto(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                ),),
        
                  Text(gelenpuanorta.toString(),style: TextStyle(
                  color: Color.fromARGB(255, 193, 193, 193),
                  fontSize: 25,
                  fontWeight: FontWeight.w700
                  ),)
                  ],
                ),
                  Row(
                children: <Widget>[
                  Image(image: AssetImage("assets/ortaokul5seviyeRozet.png"),width: 55,height: 55,color: Colors.white.withOpacity(ortaokul5rozet), colorBlendMode: BlendMode.modulate),
                  Image(image: AssetImage("assets/orataokul10seviyeRozet.png"),width: 55,height: 55,color: Colors.white.withOpacity(ortaokul10rozet), colorBlendMode: BlendMode.modulate),
                  Image(image: AssetImage("assets/ortaokul15seviyeRozet.png"),width: 55,height: 55,color: Colors.white.withOpacity(ortaokul15rozet), colorBlendMode: BlendMode.modulate)
                ],
              ),
        
                SizedBox(height: 20,),
        
                Row(
                  children: <Widget>[
        
                Text("Lise Puanı: ",style:GoogleFonts.roboto(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                ),),
        
                Text(gelenpuanlise.toString(),style: TextStyle(
                  color: Color.fromARGB(255, 193, 193, 193),
                  fontSize: 25,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),
        
                SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Image(image: AssetImage("assets/lise5seviyeRozet.png"),width: 55,height: 55,color: Colors.white.withOpacity(lise5rozet), colorBlendMode: BlendMode.modulate),
                  Image(image: AssetImage("assets/orataokul10seviyeRozet.png"),width: 55,height: 55,color: Colors.white.withOpacity(lise10rozet), colorBlendMode: BlendMode.modulate),
                  Image(image: AssetImage("assets/ortaokul15seviyeRozet.png"),width: 55,height: 55,color: Colors.white.withOpacity(lise15rozet), colorBlendMode: BlendMode.modulate),
                ],
              ),
                SizedBox(height: 15,),
                 Container(
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    height: 70,
                    
                    child: ElevatedButton(
                      onPressed: () {
        
                        ilkOkulSeviyeSifirlama();
                        ortaOkulSeviyeSifirlama();
                        liseSeviyeSifirlama();
                        setState(() {
                          gelenpuanilk = 0;
                          gelenpuanlise = 0;
                          gelenpuanorta = 0;
                          gelenpuantoplam = 0;
                          genelPuanLise = 0;
                          genelPuanOrtaokul = 0;
                          genelPuan = 0;

                          ilkokulDisable5Rozet = 0.4;
                          ilkokulDisable10Rozet = 0.4;
                          ilkokulDisable15Rozet = 0.4;

                          ortaokulDisable5Rozet = 0.4;
                          ortaokulDisable10Rozet = 0.4;
                          ortaokulDisable15Rozet = 0.4;

                          liseDisable5Rozet = 0.4;
                          liseDisable10Rozet = 0.4;
                          liseDisable15Rozet = 0.4;

                          bilgiGetir();


                        });

                        
                        FirebaseAuth.instance.signOut().then((user){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => GirisEkrani()), (Route<dynamic> route) => false);
                        });
                      },
                      child: Text("Çıkış Yap",style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                      )),
                      style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all(Colors.red),
                        
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                
              )
                    )
                      )
                    
        
                    ),
                  ),
              ],
          ),
           ),
          ),
        ),

      ),
    );
  }
}









ilkOkulSeviyeSifirlama(){
                      lockIcon1 = Icon(Icons.lock,color: Colors.black );
                      seviye2Color = Color(0X800384FB);

                      lockIcon2 = Icon(Icons.lock,color: Colors.black );
                      seviye3Color = Color(0X800384FB);

                      lockIcon3 = Icon(Icons.lock,color: Colors.black );
                      seviye4Color = Color(0X800384FB);

                      lockIcon4 = Icon(Icons.lock,color: Colors.black );
                      seviye5Color = Color(0X800384FB);
                      
                      lockIcon5 = Icon(Icons.lock,color: Colors.black );
                      seviye6Color = Color(0X801DFFA0);

                      lockIcon6 = Icon(Icons.lock,color: Colors.black );
                      seviye7Color = Color(0X801DFFA0);

                      lockIcon7 = Icon(Icons.lock,color: Colors.black );
                      seviye8Color = Color(0X801DFFA0);

                      lockIcon8 = Icon(Icons.lock,color: Colors.black );
                      seviye9Color = Color(0X801DFFA0);

                      lockIcon9 = Icon(Icons.lock,color: Colors.black );
                      seviye10Color = Color(0X801DFFA0);

                      lockIcon10 = Icon(Icons.lock,color: Colors.black );
                      seviye11Color = Color(0X80F90000);

                      lockIcon11 = Icon(Icons.lock,color: Colors.black );
                      seviye12Color = Color(0X80F90000);

                      lockIcon12 = Icon(Icons.lock,color: Colors.black );
                      seviye13Color = Color(0X80F90000);

                      lockIcon13 = Icon(Icons.lock,color: Colors.black );
                      seviye14Color = Color(0X80F90000);

                      lockIcon14 = Icon(Icons.lock,color: Colors.black );
                      seviye15Color = Color(0X80F90000);

                      
}







liseSeviyeSifirlama(){
                      lockIconLise1 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye2Color = Color(0X800384FB);

                      lockIconLise2 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye3Color = Color(0X800384FB);

                      lockIconLise3 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye4Color = Color(0X800384FB);

                      lockIconLise4 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye5Color = Color(0X800384FB);
                      
                      lockIconLise5 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye6Color = Color(0X801DFFA0);

                      lockIconLise6 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye7Color = Color(0X801DFFA0);

                      lockIconLise7 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye8Color = Color(0X801DFFA0);

                      lockIconLise8 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye9Color = Color(0X801DFFA0);

                      lockIconLise9 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye10Color = Color(0X801DFFA0);

                      lockIconLise10 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye11Color = Color(0X80F90000);

                      lockIconLise11 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye12Color = Color(0X80F90000);

                      lockIconLise12 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye13Color = Color(0X80F90000);

                      lockIconLise13 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye14Color = Color(0X80F90000);

                      lockIconLise14 = Icon(Icons.lock,color: Colors.black );
                      liseSeviye15Color = Color(0X80F90000);

                      
}




ortaOkulSeviyeSifirlama(){

                      lockIconOrtaOkul1 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye2Color = Color(0X800384FB);

                      lockIconOrtaOkul2 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye3Color = Color(0X800384FB);

                      lockIconOrtaOkul3 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye4Color = Color(0X800384FB);

                      lockIconOrtaOkul4 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye5Color = Color(0X800384FB);
                      
                      lockIconOrtaOkul5 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye6Color = Color(0X801DFFA0);

                      lockIconOrtaOkul6 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye7Color = Color(0X801DFFA0);

                      lockIconOrtaOkul7 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye8Color = Color(0X801DFFA0);

                      lockIconOrtaOkul8 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye9Color = Color(0X801DFFA0);

                      lockIconOrtaOkul9 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye10Color = Color(0X801DFFA0);

                      lockIconOrtaOkul10 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye11Color = Color(0X80F90000);

                      lockIconOrtaOkul11 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye12Color = Color(0X80F90000);

                      lockIconOrtaOkul12 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye13Color = Color(0X80F90000);

                      lockIconOrtaOkul13 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye14Color = Color(0X80F90000);

                      lockIconOrtaOkul14 = Icon(Icons.lock,color: Colors.black );
                      ortaOkulSeviye15Color = Color(0X80F90000);

                      
}