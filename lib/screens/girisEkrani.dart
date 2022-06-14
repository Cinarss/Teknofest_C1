



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:teknofest_c1/coktan_secmeli.dart';
import 'package:teknofest_c1/main.dart';
import 'package:teknofest_c1/screens/kayitEkrani.dart';
import 'package:teknofest_c1/zorlukSecim.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teknofest_c1/levelİlkOkul/level1.dart';

  String kullaniciAdi = "";

class GirisEkrani extends StatefulWidget {
  GirisEkrani({Key? key}) : super(key: key);

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {

  var _formAnahtari = GlobalKey<FormState>();




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
                  child: Text("Oyunu oynamak için lütfen giriş yapın.\n Hesabınız yoksa hemen kayıt olun.",
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


                      girisYap();
                      
                      bilgiGetir();
                      
                      
                    },
                    child: Text("Giriş Yap",style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    )),
                    style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all(Color(0XFF7DD0FF)),
                      
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
                    child: Text("Hesabın yok mu ?",style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Color(0X80000000),
                      fontWeight: FontWeight.w500)
                    )
                  ),
                ),GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => KayitEkrani()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(1.0),
                    alignment: Alignment.centerRight,
                    child: Text("Oluştur",style: GoogleFonts.roboto(
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

  void girisYap() {
    if(_formAnahtari.currentState!.validate()){
      FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: parola).then((user){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) =>anasayfa()), (route) => false);
      });
    }
  }
}