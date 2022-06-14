// 
// import 'package:shared_preferences/shared_preferences.dart';
// 
// import 'coktan_secmeli.dart';
// 
// veriKaydet() async{
//   
//   String benimYazim = "Bu yazı Kaydedilecek";
// 
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   await prefs.setInt(puans.puanilk.toString(), genelPuan);
//   await prefs.setInt(puans.puanorta.toString(), genelPuanOrtaokul);
//   await prefs.setInt(puans.puanlise.toString(), genelPuanLise);
//   await prefs.setString("BenimYazim", benimYazim);
// }
// 
// 
// veriOku() async{
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   genelPuan = prefs.getInt(puans.puanilk.toString())!;
//   genelPuanOrtaokul = prefs.getInt(puans.puanorta.toString())!;
//   genelPuanLise = prefs.getInt(puans.puanlise.toString())!;
//   String? benimYazim = prefs.getString("BenimYazim");
//   print("benimSayim: $genelPuan ------ benimYazim : $benimYazim");
// }
// 
// 
// 
// 
// 
// 
// 
// 
// 
// 
// enum puans{
//   puanilk,
//   puanorta,
//   puanlise
// }






