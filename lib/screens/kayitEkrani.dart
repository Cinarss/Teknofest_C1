import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:teknofest_c1/coktan_secmeli.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level1.dart';
import 'package:teknofest_c1/main.dart';
import 'package:teknofest_c1/profil.dart';
import 'package:teknofest_c1/screens/girisEkrani.dart';
import 'package:teknofest_c1/zorlukSecim.dart';
import 'package:google_fonts/google_fonts.dart';

  String email = "",parola = "";

  int toplamPuanlar = genelPuan + lisePuan + ortaOkulPuan;

class KayitEkrani extends StatefulWidget {
  KayitEkrani({Key? key}) : super(key: key);

  @override
  State<KayitEkrani> createState() => _KayitEkraniState();
}

class _KayitEkraniState extends State<KayitEkrani> {
  var _formAnahtari = GlobalKey<FormState>();



  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kullanıcı Kayıt Ekranı",style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
    body: Center(
      child: SingleChildScrollView(
        
        child: Form(
          key: _formAnahtari,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Oyunu oynamak için lütfen kayıt olun",
                  style: GoogleFonts.roboto(
                    color: Color(0x80000000),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  )),
                ),

                Padding(padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  
                  onChanged: (alinanMail){
                    setState(() {
                      email = alinanMail;
                      
                    });
                  },
          
                  validator: (alinanMail){
                    return alinanMail!.contains("@")
                    ? null 
                    : "Mail Adresiniz geçersiz lütfen geçerli bir mail adresi giriniz";
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFB3E7F2),
                     border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(25.0)),
                    
                    labelText: "E-posta",labelStyle: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0x80000000),
                    ),
                    
                    
                  ),
                ),
                
                
                
                ),

                SizedBox(height: 20,),

          Padding(padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  
                  onChanged: (alinanAd){
                    setState(() {
                      kullaniciAdi = alinanAd;
                      
                    });
                  },
          
                  
                  
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFB3E7F2),
                     border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(25.0)),
                    
                    labelText: "Kullanıcı Adı",labelStyle: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0x80000000),
                    ),
                    
                    
                  ),
                ),
                
                
                
                ),


                SizedBox(height: 20,),
                
                Padding(padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  onChanged: (alinanParola){
                    setState(() {
                      parola = alinanParola;
                    });
                  },
          
                  validator: (alinanParola){
                    return alinanParola!.length>=6
                    ? null 
                    : "Şifreniz en az 6 karakter olmalıdır";
                    
                  },
                  obscureText: true,
                  // keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFB3E7F2),
                     border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(25.0)),
                    labelText: "Şifre",labelStyle: GoogleFonts.roboto(
                      color: Color(0x80000000),
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      
                      
                    ),
                    
                  ),
                ),
                
                
                
                ),

                Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  height: 70,
                  
                  child: ElevatedButton(
                    
                    onPressed: () {
                      genelPuan = 0;
                      lisePuan = 0;
                      ortaOkulPuan = 0;

                      kayitEkle();
                      kayitOlustur();
                      
                    },
                    child: Text("Kayıt Ol",style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    )),
                    style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all(Color(0XFF5592CB)),
                      
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              
            )
                  )
                    )
                  

                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                GestureDetector(
                 
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.centerRight,
                    child: Text("Zaten bir hesabım var",style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Color(0X80000000),
                      fontWeight: FontWeight.w500)
                    )
                  ),
                ),GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => GirisEkrani()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(1.0),
                    alignment: Alignment.centerRight,
                    child: Text("Giriş Yap",style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)
                    )
                  ),
                )
          
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    )
    );
  }

  void kayitEkle() {
    if(_formAnahtari.currentState!.validate()){
      FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: parola).then((user){
        // FirebaseFirestore.instance.collection("KullaniciBilgileri").doc("denee").set({"KullaniciEposta": email,"KullaniciSifre":parola});
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => anasayfa()), (Route<dynamic> route) => false);
      });
    }
  }

 


}


 void kayitOlustur() {
    FirebaseFirestore. instance
    .collection("kullanici")
    .doc(email)
    .set({'Email':email,'Sifre':parola,"KullaniciAdi":kullaniciAdi,'İlkokulPuan' : genelPuan,"Ortaokul":ortaOkulPuan,"Lise":lisePuan,"Toplam":(genelPuan + lisePuan + ortaOkulPuan),
    "ilkokul5Rozet":ilkokulDisable5Rozet,"ilkokul10Rozet":ilkokulDisable10Rozet,"ilkokul15Rozet":ilkokulDisable15Rozet,
    "ortaokul5Rozet":ortaokulDisable5Rozet,"ortaokul10Rozet":ortaokulDisable10Rozet,"ortaokul15Rozet":ortaokulDisable15Rozet,
    "lise5Rozet":liseDisable5Rozet,"lise10Rozet":liseDisable10Rozet,"lise15Rozet":liseDisable15Rozet});
  }


  
 

  void puanGuncelle(){
    FirebaseFirestore.instance
    .collection("kullanici")
    .doc(email)
    .update({'İlkokulPuan' : genelPuan,"Ortaokul":genelPuanOrtaokul,"Lise":genelPuanLise,"Toplam":(genelPuan + genelPuanLise + genelPuanOrtaokul),
    "ilkokul5Rozet":ilkokulDisable5Rozet,"ilkokul10Rozet":ilkokulDisable10Rozet,"ilkokul15Rozet":ilkokulDisable15Rozet,
    "ortaokul5Rozet":ortaokulDisable5Rozet,"ortaokul10Rozet":ortaokulDisable10Rozet,"ortaokul15Rozet":ortaokulDisable15Rozet,
    "lise5Rozet":liseDisable5Rozet,"lise10Rozet":liseDisable10Rozet,"lise15Rozet":liseDisable15Rozet});
  }


 