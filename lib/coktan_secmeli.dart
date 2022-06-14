
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:teknofest_c1/Seviyeler/ilkOkulSeviyeler.dart';
import 'package:teknofest_c1/Seviyeler/ortaOkulSeviyler.dart';
import 'package:teknofest_c1/level%C4%B0lkOkul/level1.dart';
import 'package:teknofest_c1/main.dart';
import 'package:audioplayers/audioplayers.dart';

const kUrl1 = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';

int aktifSoru = 0;

 var random = new Random();
int puan = 0;
int ortaOkulPuan = 0;
int lisePuan = 0;
int genelPuan = 0; // ilk okul genel puan.
int genelPuanOrtaokul = 0; 
int genelPuanLise = 0; 
final oynatici = AudioCache();
AudioPlayer advancedPlayer = AudioPlayer();


//KOLAY Rastgele sayi
  int kSayi1 = 100;
  int kSayi2 = 100;
  int kBirinci = random.nextInt(kSayi1);
  int kIkinci = random.nextInt(kSayi2);
  int kToplam = (kBirinci + kIkinci);

  int kSayi21 = 100;
  int kSayi22 = 100;
  int kBirinci2 = random.nextInt(kSayi21);
  int kIkinci2 = random.nextInt(kSayi22);
  int kToplam2 = (kBirinci2 + kIkinci2);

  int kSayi14 = 100;
  int kSayi24= 100;
  int kBirinci4 = random.nextInt(kSayi14);
  int kIkinci4 = random.nextInt(kSayi24);
  int kToplam4 = (kBirinci4 + kIkinci4);

  int kSayi15 = 100;
  int kSayi25= 100;
  int kBirinci5 = random.nextInt(kSayi15);
  int kIkinci5 = random.nextInt(kSayi25);
  int kToplam5 = (kBirinci5 + kIkinci5);

  int kSayi16 = 100;
  int kSayi26 = 100;
  int kBirinci6 = random.nextInt(kSayi16);
  int kIkinci6 = random.nextInt(kSayi26);
  int kToplam6 = (kBirinci6 + kIkinci6);

  int kSayi17 = 100;
  int kSayi27 = 100;
  int kBirinci7 = random.nextInt(kSayi17);
  int kIkinci7 = random.nextInt(kSayi27);
  int kToplam7 = (kBirinci7 + kIkinci7);



//ORTA Rastgele sayi

  int cSayi1 = 10;
  int cSayi2 = 10;
  int cBirinci = random.nextInt(cSayi1);
  int cIkinci = random.nextInt(cSayi2);
  int carpma = (cBirinci * cIkinci);


  
TestYapisi benimSorum65 = new TestYapisi();
class TestYapisi{
int aktifSoru = 0;


List<Soru>  Sorular =[
  Soru(soru_metni: "7+8",a: "15",b: "17",c: "20",d: "26",cevap: "A"),
  Soru(soru_metni: "10+5",a: "14",b: "15",c: "30",d: "16",cevap: "C"),
  Soru(soru_metni: "20+7",a: "16",b: "17",c: "20",d: "27",cevap: "D"),
  Soru(soru_metni: "17+9",a: "30",b: "27",c: "25",d: "26",cevap: "D"),
  Soru(soru_metni: "23+1",a: "25",b: "24",c: "16",d: "26",cevap: "B"),
  Soru(soru_metni: "24+7",a: "32",b: "30",c: "31",d: "27",cevap: "C"),
  Soru(soru_metni: "33+9",a: "42",b: "57",c: "40",d: "46",cevap: "A"),
  
];






void sonrakiSoru(){
  aktifSoru++;
  


}



String soruMetni(){
  
  return Sorular[aktifSoru].soruMetni;  

}




String aSikkiYaz(){
  return Sorular[aktifSoru].aSikki;
}

String bSikkiYaz(){
  return Sorular[aktifSoru].bSikki;
}

String cSikkiYaz(){
  return Sorular[aktifSoru].cSikki;
}

String dSikkiYaz(){
  return Sorular[aktifSoru].dSikki;
}

String kontrol = "";
void cevapKontrol(String cevabi){
  if(Sorular[aktifSoru].Cevap == cevabi){  
    print(puan += counter * 2);
    oynatici.play("correct.mp3");
    
  }
  else{
    print(puan -= 10);
    oynatici.play("wrong.mp3");
    
    
  }

}



void ortaOkulCevapKontrol(String cevabi){
  if(Sorular[aktifSoru].Cevap == cevabi){  
    print(ortaOkulPuan += 20);
    oynatici.play("correct.mp3");
  }
  else{
    print(ortaOkulPuan -= 10);
    oynatici.play("wrong.mp3");
  }

}


void liseCevapKontrol(String cevabi){
  if(Sorular[aktifSoru].Cevap == cevabi){  
    print(lisePuan += 20);
    oynatici.play("correct.mp3");
    
  }
  else{
    print(lisePuan -= 10);
    oynatici.play("wrong.mp3");
  }

}

}



class Soru{
  String soruMetni = "";
  String aSikki = "";
  String bSikki = "";
  String cSikki = "";
  String dSikki = "";
  String Cevap = "";

  Soru({required String soru_metni,required String a ,required String b ,required String c,required String d, required String cevap}){
    soruMetni = soru_metni;
    aSikki = a;
    bSikki = b;
    cSikki = c;
    dSikki = d;
    Cevap = cevap;


  }



}

// İLKOKUL SORULAR




TestYapisi1 benimSorum1 = new TestYapisi1();
class TestYapisi1 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "7+8",a: "15",b: "17",c: "20",d: "26",cevap: "A"),
  Soru(soru_metni: "10+5",a: "14",b: "15",c: "30",d: "16",cevap: "B"),
  Soru(soru_metni: "20+7",a: "16",b: "17",c: "20",d: "27",cevap: "D"),
  Soru(soru_metni: "17+9",a: "30",b: "27",c: "25",d: "26",cevap: "D"),
  Soru(soru_metni: "23+1",a: "25",b: "24",c: "16",d: "26",cevap: "B"),
  Soru(soru_metni: "24+7",a: "32",b: "30",c: "31",d: "27",cevap: "C"),
  Soru(soru_metni: "33+9",a: "42",b: "57",c: "40",d: "46",cevap: "A"),
  Soru(soru_metni: "45+7",a: "44",b: "54",c: "52",d: "46",cevap: "C"),
];

}


TestYapisi2 benimSorum2 = new TestYapisi2();
class TestYapisi2 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "5+8",a: "13",b: "17",c: "55",d: "56",cevap: "A"),
  Soru(soru_metni: "5x4",a: "30",b: "25",c: "20",d: "30",cevap: "C"),
  Soru(soru_metni: "6x7",a: "48",b: "42",c: "47",d: "57",cevap: "B"),
  Soru(soru_metni: "10-5",a: "3",b: "5",c: "2",d: "7",cevap: "B"),
  Soru(soru_metni: "4-1",a: "5",b: "9",c: "3",d: "2",cevap: "C"),
  Soru(soru_metni: "23+21",a: "32",b: "33",c: "44",d: "37",cevap: "C"),
  Soru(soru_metni: "17+8",a: "22",b: "15",c: "20",d: "25",cevap: "D"),
  Soru(soru_metni: "27+7",a: "32",b: "35",c: "30",d: "34",cevap: "D"),
];

}

class Soru1{
  String soruMetni = "";
  String aSikki = "";
  String bSikki = "";
  String cSikki = "";
  String dSikki = "";
  String Cevap = "";

  Soru1({required String soru_metni,required String a ,required String b ,required String c,required String d, required String cevap}){
    soruMetni = soru_metni;
    aSikki = a;
    bSikki = b;
    cSikki = c;
    dSikki = d;
    Cevap = cevap;


  }



}








TestYapisi3 benimSorum3 = new TestYapisi3();
class TestYapisi3 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "47+8",a: "50",b: "57",c: "55",d: "56",cevap: "C"),
  Soru(soru_metni: "5x3",a: "30",b: "25",c: "15",d: "30",cevap: "C"),
  Soru(soru_metni: "6x8",a: "48",b: "45",c: "47",d: "57",cevap: "A"),
  Soru(soru_metni: "9-5",a: "3",b: "4",c: "2",d: "5",cevap: "B"),
  Soru(soru_metni: "3-1",a: "5",b: "3",c: "4",d: "2",cevap: "D"),
  Soru(soru_metni: "13+21",a: "32",b: "33",c: "34",d: "37",cevap: "C"),
  Soru(soru_metni: "17+4",a: "22",b: "15",c: "20",d: "21",cevap: "D"),
  Soru(soru_metni: "37+4",a: "40",b: "45",c: "50",d: "41",cevap: "D"),
];
}


TestYapisi4 benimSorum4 = new TestYapisi4();
class TestYapisi4 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "23+9",a: "32",b: "31",c: "30",d: "33",cevap: "A"),
  Soru(soru_metni: "37-11",a: "25",b: "26",c: "30",d: "36",cevap: "B"),
  Soru(soru_metni: "4x3",a: "13",b: "20",c: "15",d: "12",cevap: "D"),
  Soru(soru_metni: "3x4",a: "16",b: "15",c: "12",d: "11",cevap: "C"),
  Soru(soru_metni: "17+9",a: "25",b: "24",c: "26",d: "36",cevap: "C"),
  Soru(soru_metni: "20-19",a: "4",b: "1",c: "0",d: "3",cevap: "B"),
  Soru(soru_metni: "6+10",a: "20",b: "16",c: "23",d: "17",cevap: "B"),
  Soru(soru_metni: "60+10",a: "40",b: "70",c: "80",d: "50",cevap: "B"),
];
}


TestYapisi5 benimSorum5 = new TestYapisi5();
class TestYapisi5 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "9+27",a: "33",b: "36",c: "37",d: "46",cevap: "B"),
  Soru(soru_metni: "5/5",a: "10",b: "1",c: "0",d: "5",cevap: "B"),
  Soru(soru_metni: "6x9",a: "48",b: "42",c: "54",d: "55",cevap: "C"),
  Soru(soru_metni: "13-9",a: "4",b: "5",c: "7",d: "9",cevap: "A"),
  Soru(soru_metni: "16/4",a: "4",b: "5",c: "8",d: "1",cevap: "A"),
  Soru(soru_metni: "73x1",a: "72",b: "74",c: "73",d: "67",cevap: "D"),
  Soru(soru_metni: "33+39",a: "71",b: "72",c: "80",d: "85",cevap: "B"),
  Soru(soru_metni: "43+29",a: "81",b: "72",c: "40",d: "65",cevap: "B"),
];
}


TestYapisi6 benimSorum6 = new TestYapisi6();
class TestYapisi6 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "30+90",a: "120",b: "170",c: "121",d: "126",cevap: "A"),
  Soru(soru_metni: "9x8",a: "72",b: "79",c: "78",d: "76",cevap: "A"),
  Soru(soru_metni: "8x7",a: "55",b: "57",c: "59",d: "56",cevap: "D"),
  Soru(soru_metni: "18/3",a: "3",b: "7",c: "6",d: "5",cevap: "C"),
  Soru(soru_metni: "98-17",a: "81",b: "80",c: "78",d: "76",cevap: "A"),   
  Soru(soru_metni: "7x9",a: "69",b: "68",c: "63",d: "64",cevap: "C"),
  Soru(soru_metni: "37+48",a: "42",b: "85",c: "70",d: "86",cevap: "B"),
  Soru(soru_metni: "17+28",a: "47",b: "45",c: "50",d: "46",cevap: "B"),
];
}


TestYapisi7 benimSorum7 = new TestYapisi7();
class TestYapisi7 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "10x0",a: "19",b: "15",c: "0",d: "1",cevap: "C"),
  Soru(soru_metni: "20/5",a: "10",b: "7",c: "4",d: "6",cevap: "C"),
  Soru(soru_metni: "67+19",a: "87",b: "86",c: "89",d: "90",cevap: "B"),
  Soru(soru_metni: "48-17",a: "30",b: "31",c: "25",d: "26",cevap: "B"),
  Soru(soru_metni: "97+38",a: "135",b: "131",c: "134",d: "126",cevap: "A"),
  Soru(soru_metni: "100x0",a: "30",b: "100",c: "1",d: "0",cevap: "D"),
  Soru(soru_metni: "6x9",a: "42",b: "57",c: "54",d: "46",cevap: "C"),
  Soru(soru_metni: "2x7",a: "21",b: "15",c: "14",d: "6",cevap: "C"),
];
}


TestYapisi8 benimSorum8 = new TestYapisi8();
class TestYapisi8 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "9x6",a: "54",b: "57",c: "50",d: "76",cevap: "A"),
  Soru(soru_metni: "48-19",a: "24",b: "25",c: "29",d: "26",cevap: "C"),
  Soru(soru_metni: "19+6",a: "28",b: "26",c: "20",d: "25",cevap: "D"),
  Soru(soru_metni: "87+23",a: "100",b: "110",c: "125",d: "130",cevap: "B"),
  Soru(soru_metni: "53+27",a: "75",b: "81",c: "80",d: "83",cevap: "C"),
  Soru(soru_metni: "5x5",a: "25",b: "30",c: "31",d: "27",cevap: "A"),
  Soru(soru_metni: "15/3",a: "6",b: "3",c: "4",d: "5",cevap: "D"),
  Soru(soru_metni: "25/5",a: "8",b: "7",c: "1",d: "5",cevap: "D"),
];
}


TestYapisi9 benimSorum9 = new TestYapisi9();
class TestYapisi9 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "100+27",a: "127",b: "117",c: "120",d: "126",cevap: "A"),
  Soru(soru_metni: "9+87",a: "86",b: "96",c: "90",d: "95",cevap: "B"),
  Soru(soru_metni: "87-9",a: "75",b: "79",c: "80",d: "78",cevap: "D"),
  Soru(soru_metni: "99/11",a: "3",b: "7",c: "9",d: "11",cevap: "C"),
  Soru(soru_metni: "88/8",a: "8",b: "4",c: "1",d: "11",cevap: "D"),
  Soru(soru_metni: "9x7",a: "63",b: "64",c: "65",d: "67",cevap: "A"),
  Soru(soru_metni: "111+13",a: "142",b: "127",c: "134",d: "124",cevap: "D"),
  Soru(soru_metni: "11+13",a: "42",b: "27",c: "34",d: "24",cevap: "D"),
];
}


TestYapisi10 benimSorum10 = new TestYapisi10();
class TestYapisi10 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "10+63",a: "75",b: "73",c: "70",d: "76",cevap: "B"),
  Soru(soru_metni: "90/3",a: "44",b: "30",c: "34",d: "16",cevap: "B"),
  Soru(soru_metni: "7x8",a: "55",b: "57",c: "56",d: "47",cevap: "C"),
  Soru(soru_metni: "110-83",a: "30",b: "29",c: "27",d: "26",cevap: "C"),
  Soru(soru_metni: "87+17",a: "103",b: "204",c: "106",d: "104",cevap: "D"),
  Soru(soru_metni: "6x8",a: "32",b: "48",c: "31",d: "27",cevap: "B"),
  Soru(soru_metni: "28/2",a: "14",b: "57",c: "40",d: "46",cevap: "A"),
  Soru(soru_metni: "81/3",a: "27",b: "37",c: "18",d: "16",cevap: "A"),
];
}


TestYapisi11 benimSorum11 = new TestYapisi11();
class TestYapisi11 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "81+93",a: "156",b: "170",c: "174",d: "268",cevap: "C"),
  Soru(soru_metni: "90/45",a: "4",b: "1",c: "2",d: "6",cevap: "C"),
  Soru(soru_metni: "45x2",a: "95",b: "90",c: "70",d: "78",cevap: "B"),
  Soru(soru_metni: "183-19",a: "310",b: "127",c: "115",d: "164",cevap: "D"),
  Soru(soru_metni: "10x999",a: "9990",b: "9999",c: "9900",d: "9000",cevap: "A"),
  Soru(soru_metni: "111-17",a: "94",b: "90",c: "97",d: "78",cevap: "A"),
  Soru(soru_metni: "130-43",a: "84",b: "87",c: "89",d: "86",cevap: "B"),
  Soru(soru_metni: "30-4",a: "24",b: "26",c: "39",d: "16",cevap: "B"),
];
}


TestYapisi12 benimSorum12 = new TestYapisi12();
class TestYapisi12 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "98+17",a: "105",b: "115",c: "120",d: "126",cevap: "B"),
  Soru(soru_metni: "101-9",a: "84",b: "92",c: "70",d: "96",cevap: "B"),
  Soru(soru_metni: "100/25",a: "6",b: "7",c: "4",d: "2",cevap: "C"),
  Soru(soru_metni: "99/3",a: "33",b: "27",c: "25",d: "26",cevap: "A"),
  Soru(soru_metni: "15/3",a: "5",b: "4",c: "6",d: "9",cevap: "A"),
  Soru(soru_metni: "6x10",a: "35",b: "100",c: "30",d: "60",cevap: "D"),
  Soru(soru_metni: "75-19",a: "42",b: "57",c: "56",d: "46",cevap: "C"),
  Soru(soru_metni: "15-9",a: "4",b: "7",c: "6",d: "10",cevap: "C"),
];
}


TestYapisi13 benimSorum13 = new TestYapisi13();
class TestYapisi13 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "83+15",a: "95",b: "97",c: "90",d: "98",cevap: "D"),
  Soru(soru_metni: "90/9",a: "9",b: "90",c: "30",d: "10",cevap: "D"),
  Soru(soru_metni: "123+311",a: "416",b: "417",c: "434",d: "427",cevap: "C"),
  Soru(soru_metni: "119-69",a: "50",b: "47",c: "45",d: "76",cevap: "A"),
  Soru(soru_metni: "150+250",a: "425",b: "400",c: "416",d: "461",cevap: "B"),
  Soru(soru_metni: "250/50",a: "2",b: "3",c: "5",d: "7",cevap: "C"),
  Soru(soru_metni: "50x3",a: "142",b: "150",c: "140",d: "146",cevap: "B"),
  Soru(soru_metni: "10x3",a: "142",b: "30",c: "40",d: "146",cevap: "B"),
];
}


TestYapisi14 benimSorum14 = new TestYapisi14();
class TestYapisi14 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "19+213",a: "215",b: "217",c: "232",d: "226",cevap: "C"),
  Soru(soru_metni: "10x8",a: "104",b: "80",c: "70",d: "86",cevap: "B"),
  Soru(soru_metni: "122/2",a: "16",b: "61",c: "60",d: "27",cevap: "B"),
  Soru(soru_metni: "190-73",a: "130",b: "117",c: "125",d: "126",cevap: "B"),
  Soru(soru_metni: "182+27",a: "205",b: "209",c: "106",d: "206",cevap: "B"),
  Soru(soru_metni: "181-79",a: "102",b: "130",c: "101",d: "147",cevap: "A"),
  Soru(soru_metni: "84/4",a: "42",b: "57",c: "40",d: "21",cevap: "D"),
  Soru(soru_metni: "4/4",a: "2",b: "5",c: "0",d: "1",cevap: "D"),
];
}



TestYapisi15 benimSorum15 = new TestYapisi15();
class TestYapisi15 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "999+59",a: "1058",b: "1007",c: "1020",d: "926",cevap: "A"),
  Soru(soru_metni: "999/9",a: "130",b: "111",c: "130",d: "120",cevap: "B"),
  Soru(soru_metni: "999-99",a: "199",b: "900",c: "999",d: "899",cevap: "B"),
  Soru(soru_metni: "999x1",a: "1000",b: "998",c: "999",d: "989",cevap: "C"),
  Soru(soru_metni: "999x0",a: "0",b: "999",c: "990",d: "909",cevap: "A"),
  Soru(soru_metni: "199+67",a: "260",b: "230",c: "310",d: "266",cevap: "D"),
  Soru(soru_metni: "188/2",a: "100",b: "105",c: "95",d: "94",cevap: "D"),
  Soru(soru_metni: "8/2",a: "11",b: "10",c: "5",d: "4",cevap: "D"),
];
}






//***************************************************************** */





/// ORTAOKUL



TestYapisi16 benimSorum16 = new TestYapisi16();
class TestYapisi16 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "9x8",a: "72",b: "77",c: "75",d: "76",cevap: "A"),
  Soru(soru_metni: "5x9",a: "30",b: "35",c: "45",d: "40",cevap: "C"),
  Soru(soru_metni: "45+78",a: "138",b: "123",c: "147",d: "127",cevap: "B"),
  Soru(soru_metni: "8x3",a: "73",b: "34",c: "25",d: "24",cevap: "D"),
  Soru(soru_metni: "17+98",a: "105",b: "130",c: "115",d: "120",cevap: "C"),
  Soru(soru_metni: "10+27",a: "32",b: "37",c: "34",d: "33",cevap: "B"),
  Soru(soru_metni: "8x8",a: "64",b: "65",c: "60",d: "61",cevap: "A"),
  Soru(soru_metni: "1x8",a: "8",b: "6",c: "6",d: "1",cevap: "A"),
];
}


TestYapisi17 benimSorum17 = new TestYapisi17();
class TestYapisi17 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "98-5",a: "82",b: "91",c: "93",d: "83",cevap: "C"),
  Soru(soru_metni: "103-17",a: "85",b: "96",c: "80",d: "86",cevap: "D"),
  Soru(soru_metni: "22/2",a: "13",b: "20",c: "15",d: "11",cevap: "D"),
  Soru(soru_metni: "63+8",a: "71",b: "75",c: "72",d: "61",cevap: "A"),
  Soru(soru_metni: "90/9",a: "10",b: "14",c: "16",d: "11",cevap: "A"),
  Soru(soru_metni: "78-16",a: "64",b: "61",c: "62",d: "63",cevap: "C"),
  Soru(soru_metni: "18/3",a: "10",b: "8",c: "6",d: "7",cevap: "C"),
  Soru(soru_metni: "24/3",a: "12",b: "11",c: "8",d: "5",cevap: "C"),
];
}


TestYapisi18 benimSorum18 = new TestYapisi18();
class TestYapisi18 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "2x9",a: "18",b: "16",c: "17",d: "26",cevap: "A"),
  Soru(soru_metni: "6x7",a: "40",b: "41",c: "42",d: "45",cevap: "C"),
  Soru(soru_metni: "23+61",a: "84",b: "82",c: "85",d: "75",cevap: "A"),
  Soru(soru_metni: "83-7",a: "74",b: "76",c: "77",d: "79",cevap: "B"),
  Soru(soru_metni: "91-37",a: "45",b: "54",c: "58",d: "51",cevap: "B"),
  Soru(soru_metni: "9x3",a: "22",b: "24",c: "27",d: "37",cevap: "C"),
  Soru(soru_metni: "21/7",a: "3",b: "2",c: "8",d: "5",cevap: "A"),
  Soru(soru_metni: "7/1",a: "7",b: "5",c: "4",d: "1",cevap: "A"),
];
}


TestYapisi19 benimSorum19 = new TestYapisi19();
class TestYapisi19 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "3+17",a: "10",b: "20",c: "21",d: "26",cevap: "B"),
  Soru(soru_metni: "8x2",a: "12",b: "19",c: "16",d: "26",cevap: "C"),
  Soru(soru_metni: "120/2",a: "55",b: "57",c: "56",d: "60",cevap: "D"),
  Soru(soru_metni: "18-17",a: "5",b: "7",c: "3",d: "1",cevap: "D"),
  Soru(soru_metni: "77+30",a: "118",b: "108",c: "107",d: "100",cevap: "C"),   
  Soru(soru_metni: "3x4",a: "12",b: "18",c: "13",d: "14",cevap: "A"),
  Soru(soru_metni: "54/2",a: "27",b: "25",c: "20",d: "26",cevap: "A"),
  Soru(soru_metni: "5/1",a: "5",b: "2",c: "3",d: "6",cevap: "A"),
];
}


TestYapisi20 benimSorum20 = new TestYapisi20();
class TestYapisi20 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "3x2",a: "9",b: "6",c: "5",d: "1",cevap: "B"),
  Soru(soru_metni: "41-13",a: "20",b: "28",c: "24",d: "26",cevap: "B"),
  Soru(soru_metni: "40+27",a: "68",b: "66",c: "67",d: "60",cevap: "C"),
  Soru(soru_metni: "25/5",a: "5",b: "3",c: "25",d: "26",cevap: "A"),
  Soru(soru_metni: "97-47",a: "40",b: "57",c: "51",d: "50",cevap: "D"),
  Soru(soru_metni: "6x6",a: "40",b: "30",c: "31",d: "36",cevap: "D"),
  Soru(soru_metni: "23+32",a: "55",b: "57",c: "67",d: "46",cevap: "A"),
  Soru(soru_metni: "13+52",a: "65",b: "67",c: "77",d: "26",cevap: "A"),
];
}


TestYapisi21 benimSorum21 = new TestYapisi21();
class TestYapisi21 extends TestYapisi{
int aktifSoru = 0;

// adffffffffdaadadad
List<Soru> Sorular =[
  Soru(soru_metni: "4+5x3",a: "14",b: "17",c: "15",d: "19",cevap: "D"),
  Soru(soru_metni: "8+3x5",a: "24",b: "25",c: "29",d: "23",cevap: "D"),
  Soru(soru_metni: "11+3x1",a: "18",b: "16",c: "14",d: "15",cevap: "C"),
  Soru(soru_metni: "8+8x3",a: "34",b: "35",c: "32",d: "37",cevap: "C"),
  Soru(soru_metni: "9x8+15",a: "87",b: "81",c: "80",d: "83",cevap: "A"),
  Soru(soru_metni: "7+3x1",a: "25",b: "10",c: "11",d: "17",cevap: "B"),
  Soru(soru_metni: "6x5+7",a: "36",b: "33",c: "34",d: "37",cevap: "D"),
  Soru(soru_metni: "1x5+7",a: "16",b: "13",c: "14",d: "12",cevap: "D"),
];
}



TestYapisi22 benimSorum22 = new TestYapisi22();
class TestYapisi22 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "7(8-1)",a: "58",b: "49",c: "50",d: "46",cevap: "B"),
  Soru(soru_metni: "9(12-10)",a: "30",b: "19",c: "18",d: "20",cevap: "C"),
  Soru(soru_metni: "3(4+5)",a: "29",b: "30",c: "27",d: "19",cevap: "C"),
  Soru(soru_metni: "√81 + √100",a: "20",b: "18",c: "21",d: "19",cevap: "D"),
  Soru(soru_metni: "√4 x √16",a: "5",b: "6",c: "9",d: "8",cevap: "B"),
  Soru(soru_metni: "5(2³ - 2¹)",a: "27",b: "30",c: "31",d: "26",cevap: "B"),
  Soru(soru_metni: "√49 + √121",a: "10",b: "15",c: "18",d: "14",cevap: "C"),
  Soru(soru_metni: "√16 + √81",a: "14",b: "11",c: "13",d: "17",cevap: "C"),
];
}



TestYapisi23 benimSorum23 = new TestYapisi23();
class TestYapisi23 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "8+8x3",a: "27",b: "32",c: "20",d: "26",cevap: "B"),
  Soru(soru_metni: "100+3x9",a: "106",b: "126",c: "127",d: "125",cevap: "C"),
  Soru(soru_metni: "18+9x8",a: "90",b: "89",c: "80",d: "98",cevap: "A"),
  Soru(soru_metni: "19+8x3",a: "43",b: "47",c: "49",d: "41",cevap: "A"),
  Soru(soru_metni: "63+3x1",a: "68",b: "66",c: "61",d: "71",cevap: "B"),
  Soru(soru_metni: "8x7+47",a: "90",b: "104",c: "103",d: "107",cevap: "C"),
  Soru(soru_metni: "8x1+37",a: "42",b: "45",c: "34",d: "44",cevap: "B"),
  Soru(soru_metni: "1x1+37",a: "32",b: "38",c: "44",d: "34",cevap: "B"),
];
}


TestYapisi24 benimSorum24 = new TestYapisi24();
class TestYapisi24 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "8/2-3",a: "5",b: "3",c: "1",d: "6",cevap: "C"),
  Soru(soru_metni: "4/4-1",a: "4",b: "1",c: "0",d: "6",cevap: "C"),
  Soru(soru_metni: "8-9/3",a: "1",b: "5",c: "6",d: "7",cevap: "B"),
  Soru(soru_metni: "16/4+18",a: "22",b: "27",c: "25",d: "26",cevap: "A"),
  Soru(soru_metni: "25+100/2",a: "75",b: "74",c: "76",d: "78",cevap: "A"),
  Soru(soru_metni: "21/7-1",a: "3",b: "4",c: "2",d: "7",cevap: "C"),
  Soru(soru_metni: "25/25-0",a: "5",b: "1",c: "7",d: "8",cevap: "B"),
];
}


TestYapisi25 benimSorum25 = new TestYapisi25();
class TestYapisi25 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "9-27/3",a: "6",b: "7",c: "4",d: "8",cevap: "A"),
  Soru(soru_metni: "32/2+8",a: "24",b: "21",c: "22",d: "26",cevap: "A"),
  Soru(soru_metni: "48/16-1",a: "5",b: "9",c: "2",d: "8",cevap: "C"),
  Soru(soru_metni: "99/11-8",a: "3",b: "1",c: "5",d: "4",cevap: "B"),
  Soru(soru_metni: "17-34/2",a: "1",b: "9",c: "0",d: "3",cevap: "C"),
  Soru(soru_metni: "49/7-5",a: "4",b: "2",c: "8",d: "7",cevap: "B"),
  Soru(soru_metni: "52/2-5",a: "21",b: "27",c: "29",d: "36",cevap: "A"),
  Soru(soru_metni: "78-15",a: "63",b: "57",c: "69",d: "66",cevap: "A"),
];
}


TestYapisi26 benimSorum26 = new TestYapisi26();
class TestYapisi26 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "8/2+3",a: "15",b: "5",c: "7",d: "8",cevap: "C"),
  Soru(soru_metni: "9x3+18",a: "45",b: "42",c: "47",d: "46",cevap: "A"),
  Soru(soru_metni: "18-55/5",a: "6",b: "8",c: "4",d: "7",cevap: "D"),
  Soru(soru_metni: "68/2+67",a: "130",b: "107",c: "125",d: "101",cevap: "D"),
  Soru(soru_metni: "44/11-1",a: "5",b: "3",c: "6",d: "9",cevap: "B"),
  Soru(soru_metni: "8x9+17",a: "89",b: "80",c: "30",d: "60",cevap: "A"),
  Soru(soru_metni: "86/2-6",a: "42",b: "37",c: "56",d: "46",cevap: "B"),
  Soru(soru_metni: "18/2-6",a: "10",b: "3",c: "5",d: "7",cevap: "B"),
];
}


TestYapisi27 benimSorum27 = new TestYapisi27();
class TestYapisi27 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "7(2+6)",a: "56",b: "57",c: "59",d: "58",cevap: "A"),
  Soru(soru_metni: "8(3+1)",a: "39",b: "30",c: "32",d: "30",cevap: "C"),
  Soru(soru_metni: "3(16-7)",a: "16",b: "17",c: "34",d: "27",cevap: "D"),
  Soru(soru_metni: "2(16-1)",a: "50",b: "30",c: "45",d: "76",cevap: "B"),
  Soru(soru_metni: "5(4-3)",a: "5",b: "4",c: "6",d: "1",cevap: "A"),
  Soru(soru_metni: "1(1+57)",a: "58",b: "38",c: "55",d: "71",cevap: "A"),
  Soru(soru_metni: "8(17-16)",a: "4",b: "15",c: "14",d: "8",cevap: "D"),
  Soru(soru_metni: "1(17-16)",a: "15",b: "5",c: "4",d: "1",cevap: "D"),
];
}


TestYapisi28 benimSorum28 = new TestYapisi28();
class TestYapisi28 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "8(2³ + 1³)",a: "72",b: "77",c: "72",d: "76",cevap: "A"),
  Soru(soru_metni: "3(3-2)",a: "4",b: "8",c: "3",d: "6",cevap: "C"),
  Soru(soru_metni: "4(67-59)",a: "16",b: "31",c: "32",d: "27",cevap: "C"),
  Soru(soru_metni: "8(3² - 2³)",a: "13",b: "7",c: "5",d: "8",cevap: "D"),
  Soru(soru_metni: "4(37-27)",a: "45",b: "49",c: "46",d: "40",cevap: "D"),
  Soru(soru_metni: "78-65",a: "12",b: "11",c: "13",d: "17",cevap: "C"),
  Soru(soru_metni: "5(2⁴- 3²)",a: "25",b: "27",c: "40",d: "21",cevap: "A"),
  Soru(soru_metni: "1(4⁴- 3²)",a: "7",b: "2",c: "4",d: "2",cevap: "A"),
  
];
}



TestYapisi29 benimSorum29 = new TestYapisi29();
class TestYapisi29 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "x+12 = 15",a: "8",b: "3",c: "2",d: "6",cevap: "B"),
  Soru(soru_metni: "2x-5 = 7",a: "13",b: "11",c: "6",d: "12",cevap: "C"),
  Soru(soru_metni: "2x+x = 9",a: "1",b: "3",c: "9",d: "8",cevap: "B"),
  Soru(soru_metni: "4x-x = 18",a: "6",b: "8",c: "9",d: "7",cevap: "A"),
  Soru(soru_metni: "3x+8 = 32",a: "0",b: "7",c: "9",d: "8",cevap: "D"),
  Soru(soru_metni: "2x+x = 27",a: "9",b: "2",c: "3",d: "6",cevap: "A"),
  Soru(soru_metni: "5x+x = 36",a: "10",b: "6",c: "9",d: "4",cevap: "B"),
  Soru(soru_metni: "5x+4x = 36",a: "11",b: "4",c: "5",d: "7",cevap: "B"),
];
}




TestYapisi30 benimSorum30 = new TestYapisi30();
class TestYapisi30 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "√64 + √49",a: "10",b: "15",c: "12",d: "26",cevap: "B"),
  Soru(soru_metni: "√225 + √169",a: "23",b: "21",c: "28",d: "27",cevap: "C"),
  Soru(soru_metni: "√189 / √49",a: "24",b: "29",c: "26",d: "18",cevap: "A"),
  Soru(soru_metni: "√4 x √16",a: "10",b: "9",c: "6",d: "8",cevap: "C"),
  Soru(soru_metni: "√4 x √4",a: "0",b: "4",c: "9",d: "8",cevap: "B"),
  Soru(soru_metni: "√169 x √169",a: "160",b: "130",c: "110",d: "169",cevap: "D"),
  Soru(soru_metni: "√225 - √49",a: "9",b: "5",c: "11",d: "8",cevap: "D"),
  Soru(soru_metni: "√121 - √16",a: "10",b: "9",c: "1",d: "7",cevap: "D"),
];
}



//***************************************************************** */



// LİSE 

TestYapisi31 benimSorum31 = new TestYapisi31();
class TestYapisi31 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "9x6",a: "52",b: "54",c: "55",d: "56",cevap: "B"),
  Soru(soru_metni: "8x3",a: "24",b: "25",c: "35",d: "20",cevap: "A"),
  Soru(soru_metni: "5x9",a: "38",b: "43",c: "45",d: "47",cevap: "C"),
  Soru(soru_metni: "8x4",a: "32",b: "34",c: "25",d: "24",cevap: "A"),
  Soru(soru_metni: "57+111",a: "105",b: "130",c: "168",d: "120",cevap: "C"),
  Soru(soru_metni: "87+11",a: "72",b: "98",c: "94",d: "83",cevap: "B"),
  Soru(soru_metni: "7x7",a: "49",b: "55",c: "60",d: "61",cevap: "A"),
  Soru(soru_metni: "1x91",a: "91",b: "75",c: "92",d: "80",cevap: "A"),
];
}


TestYapisi32 benimSorum32 = new TestYapisi32();
class TestYapisi32 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "9x9",a: "82",b: "81",c: "93",d: "83",cevap: "B"),
  Soru(soru_metni: "48+57",a: "85",b: "96",c: "108",d: "105",cevap: "D"),
  Soru(soru_metni: "67-29",a: "43",b: "40",c: "38",d: "31",cevap: "C"),
  Soru(soru_metni: "49/7",a: "7",b: "5",c: "2",d: "1",cevap: "A"),
  Soru(soru_metni: "9x8",a: "70",b: "72",c: "76",d: "71",cevap: "B"),
  Soru(soru_metni: "3x3",a: "4",b: "6",c: "9",d: "3",cevap: "C"),
  Soru(soru_metni: "97-56",a: "49",b: "48",c: "41",d: "47",cevap: "C"),
  Soru(soru_metni: "17-16",a: "9",b: "4",c: "1",d: "8",cevap: "C"),
];
}


TestYapisi33 benimSorum33 = new TestYapisi33();
class TestYapisi33 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "10x10",a: "100",b: "106",c: "107",d: "108",cevap: "A"),
  Soru(soru_metni: "7x8",a: "50",b: "51",c: "56",d: "45",cevap: "C"),
  Soru(soru_metni: "68/2",a: "34",b: "32",c: "35",d: "45",cevap: "A"),
  Soru(soru_metni: "58-48",a: "14",b: "16",c: "15",d: "19",cevap: "C"),
  Soru(soru_metni: "48+37",a: "15",b: "11",c: "18",d: "21",cevap: "B"),
  Soru(soru_metni: "35/5",a: "2",b: "4",c: "7",d: "8",cevap: "C"),
  Soru(soru_metni: "9x1",a: "3",b: "2",c: "8",d: "9",cevap: "D"),
  Soru(soru_metni: "9x8",a: "34",b: "12",c: "81",d: "72",cevap: "D"),
];
}


TestYapisi34 benimSorum34 = new TestYapisi34();
class TestYapisi34 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "9+99",a: "108",b: "120",c: "102",d: "106",cevap: "A"),
  Soru(soru_metni: "6x5",a: "32",b: "39",c: "30",d: "36",cevap: "C"),
  Soru(soru_metni: "5x6",a: "50",b: "30",c: "40",d: "65",cevap: "B"),
  Soru(soru_metni: "77/7",a: "15",b: "17",c: "13",d: "11",cevap: "D"),
  Soru(soru_metni: "88-28",a: "67",b: "65",c: "60",d: "69",cevap: "C"),   
  Soru(soru_metni: "98+37",a: "135",b: "118",c: "131",d: "141",cevap: "A"),
  Soru(soru_metni: "58/2",a: "27",b: "25",c: "29",d: "26",cevap: "C"),
  Soru(soru_metni: "54/3",a: "20",b: "8",c: "18",d: "21",cevap: "C"),
];
}


TestYapisi35 benimSorum35 = new TestYapisi35();
class TestYapisi35 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "9x9+33",a: "119",b: "114",c: "115",d: "142",cevap: "B"),
  Soru(soru_metni: "8+9x2",a: "26",b: "28",c: "24",d: "29",cevap: "A"),
  Soru(soru_metni: "37+7x5",a: "68",b: "66",c: "72",d: "60",cevap: "C"),
  Soru(soru_metni: "38-9x5",a: "33",b: "23",c: "25",d: "26",cevap: "A"),
  Soru(soru_metni: "53+1x1",a: "40",b: "57",c: "54",d: "50",cevap: "C"),
  Soru(soru_metni: "45+17",a: "40",b: "30",c: "31",d: "42",cevap: "D"),
  Soru(soru_metni: "19-6x3",a: "1",b: "7",c: "6",d: "4",cevap: "A"),
  Soru(soru_metni: "19-1x3",a: "16",b: "17",c: "15",d: "13",cevap: "A"),
];
}


TestYapisi36 benimSorum36 = new TestYapisi36();
class TestYapisi36 extends TestYapisi{
int aktifSoru = 0;

// adffffffffdaadadad
List<Soru> Sorular =[
  Soru(soru_metni: "67-8x7",a: "23",b: "17",c: "11",d: "19",cevap: "C"),
  Soru(soru_metni: "51+7x6",a: "93",b: "95",c: "79",d: "83",cevap: "A"),
  Soru(soru_metni: "3x8+17",a: "48",b: "46",c: "41",d: "55",cevap: "C"),
  Soru(soru_metni: "81+5x9",a: "144",b: "126",c: "132",d: "137",cevap: "B"),
  Soru(soru_metni: "90-4x9",a: "54",b: "51",c: "87",d: "43",cevap: "A"),
  Soru(soru_metni: "94-17",a: "95",b: "77",c: "71",d: "87",cevap: "B"),
  Soru(soru_metni: "38-18",a: "36",b: "33",c: "24",d: "20",cevap: "D"),
  Soru(soru_metni: "38-21",a: "27",b: "13",c: "14",d: "17",cevap: "D"),
];
}



TestYapisi37 benimSorum37 = new TestYapisi37();
class TestYapisi37 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "18/2+27",a: "38",b: "36",c: "40",d: "46",cevap: "B"),
  Soru(soru_metni: "33/3+8",a: "30",b: "19",c: "18",d: "20",cevap: "B"),
  Soru(soru_metni: "45/3-6",a: "9",b: "3",c: "7",d: "1",cevap: "A"),
  Soru(soru_metni: "98/2-17",a: "30",b: "28",c: "31",d: "32",cevap: "D"),
  Soru(soru_metni: "4x8+57",a: "75",b: "89",c: "99",d: "88",cevap: "B"),
  Soru(soru_metni: "3x4",a: "27",b: "12",c: "11",d: "26",cevap: "B"),
  Soru(soru_metni: "90-45",a: "40",b: "55",c: "45",d: "44",cevap: "C"),
  Soru(soru_metni: "52-45",a: "10",b: "8",c: "7",d: "4",cevap: "C"),
];
}



TestYapisi38 benimSorum38 = new TestYapisi38();
class TestYapisi38 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "8(3+2)",a: "27",b: "40",c: "20",d: "26",cevap: "B"),
  Soru(soru_metni: "9(7+1)",a: "106",b: "126",c: "72",d: "125",cevap: "C"),
  Soru(soru_metni: "6(3+7)",a: "106",b: "126",c: "60",d: "125",cevap: "C"),
  Soru(soru_metni: "8(8-6)",a: "17",b: "19",c: "45",d: "15",cevap: "D"),
  Soru(soru_metni: "97-37",a: "60",b: "67",c: "69",d: "41",cevap: "A"),
  Soru(soru_metni: "17+57",a: "68",b: "74",c: "71",d: "74",cevap: "B"),
  Soru(soru_metni: "6x6",a: "50",b: "45",c: "37",d: "36",cevap: "D"),
  Soru(soru_metni: "6x1",a: "5",b: "4",c: "7",d: "6",cevap: "D"),
];
}


TestYapisi39 benimSorum39 = new TestYapisi39();
class TestYapisi39 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "1(90-17)",a: "73",b: "83",c: "81",d: "76",cevap: "A"),
  Soru(soru_metni: "3(8+3x1)",a: "34",b: "31",c: "33",d: "36",cevap: "C"),
  Soru(soru_metni: "7(10-2x3)",a: "21",b: "28",c: "36",d: "27",cevap: "B"),
  Soru(soru_metni: "76+18",a: "92",b: "97",c: "94",d: "96",cevap: "C"),
  Soru(soru_metni: "93-15",a: "78",b: "74",c: "76",d: "78",cevap: "A"),
  Soru(soru_metni: "√64+√64",a: "3",b: "4",c: "16",d: "7",cevap: "C"),
  Soru(soru_metni: "√64x√64",a: "61",b: "64",c: "74",d: "66",cevap: "B"),
  Soru(soru_metni: "√164x√164",a: "161",b: "164",c: "174",d: "166",cevap: "B"),
];
}


TestYapisi40 benimSorum40 = new TestYapisi40();
class TestYapisi40 extends TestYapisi{
int aktifSoru = 0;

// √ ¹²³⁴⁵⁶⁷⁸⁹⁰
List<Soru> Sorular =[
  Soru(soru_metni: "5(1+2x4)",a: "66",b: "47",c: "45",d: "78",cevap: "C"),
  Soru(soru_metni: "√81-√16",a: "5",b: "2",c: "4",d: "6",cevap: "A"),
  Soru(soru_metni: "√225+√25",a: "25",b: "29",c: "21",d: "20",cevap: "D"),
  Soru(soru_metni: "√289+√381",a: "43",b: "36",c: "35",d: "94",cevap: "B"),
  Soru(soru_metni: "7(2²-2²)",a: "0",b: "9",c: "4",d: "3",cevap: "A"),
  Soru(soru_metni: "3(10-2x3)",a: "4",b: "12",c: "4",d: "7",cevap: "B"),
  Soru(soru_metni: "√90x√90",a: "90",b: "77",c: "29",d: "36",cevap: "A"),
  Soru(soru_metni: "√900x√900",a: "900",b: "770",c: "290",d: "360",cevap: "A"),
];
}


TestYapisi41 benimSorum41 = new TestYapisi41();
class TestYapisi41 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "9(3+2)",a: "54",b: "58",c: "71",d: "83",cevap: "A"),
  Soru(soru_metni: "4(2²+1¹)",a: "45",b: "42",c: "47",d: "20",cevap: "D"),
  Soru(soru_metni: "3(2-1)",a: "6",b: "8",c: "4",d: "3",cevap: "D"),
  Soru(soru_metni: "97+34",a: "130",b: "107",c: "125",d: "131",cevap: "D"),
  Soru(soru_metni: "78-47",a: "5",b: "31",c: "6",d: "9",cevap: "B"),
  Soru(soru_metni: "√16+√225",a: "19",b: "80",c: "30",d: "60",cevap: "A"),
  Soru(soru_metni: "2(3+2x5)",a: "42",b: "37",c: "26",d: "46",cevap: "C"),
  Soru(soru_metni: "0(3+2x5)",a: "45",b: "3",c: "0",d: "6",cevap: "C"),
];
}


TestYapisi42 benimSorum42 = new TestYapisi42();
class TestYapisi42 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "3x+5=14",a: "3",b: "57",c: "59",d: "58",cevap: "A"),
  Soru(soru_metni: "4x-3=13",a: "39",b: "30",c: "4",d: "30",cevap: "C"),
  Soru(soru_metni: "3x+2x=50",a: "1",b: "16",c: "34",d: "27",cevap: "B"),
  Soru(soru_metni: "61+28",a: "50",b: "30",c: "89",d: "76",cevap: "C"),
  Soru(soru_metni: "√4+√25",a: "7",b: "4",c: "6",d: "1",cevap: "A"),
  Soru(soru_metni: "4x+9=25",a: "4",b: "38",c: "55",d: "71",cevap: "A"),
  Soru(soru_metni: "8x1",a: "4",b: "15",c: "14",d: "8",cevap: "D"),
  Soru(soru_metni: "1x1",a: "2",b: "5",c: "10",d: "1",cevap: "D"),
];
}


TestYapisi43 benimSorum43 = new TestYapisi43();
class TestYapisi43 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "98/2",a: "72",b: "77",c: "49",d: "76",cevap: "C"),
  Soru(soru_metni: "36/3",a: "4",b: "8",c: "3",d: "6",cevap: "C"),
  Soru(soru_metni: "72/2",a: "36",b: "31",c: "32",d: "27",cevap: "A"),
  Soru(soru_metni: "3x-x=40",a: "13",b: "7",c: "5",d: "20",cevap: "D"),
  Soru(soru_metni: "3(3+8)",a: "45",b: "49",c: "46",d: "33",cevap: "D"),
  Soru(soru_metni: "9(9+1)",a: "12",b: "11",c: "90",d: "17",cevap: "C"),
  Soru(soru_metni: "3(4+8)",a: "36",b: "27",c: "40",d: "21",cevap: "A"),
  Soru(soru_metni: "3(1+8)",a: "27",b: "17",c: "47",d: "15",cevap: "A"),
  
];
}



TestYapisi44 benimSorum44 = new TestYapisi44();
class TestYapisi44 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "√625+√625",a: "50",b: "30",c: "72",d: "86",cevap: "A"),
  Soru(soru_metni: "√900 x √900",a: "1000",b: "1111",c: "900",d: "999",cevap: "C"),
  Soru(soru_metni: "8x+5 = 13",a: "3",b: "1",c: "9",d: "8",cevap: "B"),
  Soru(soru_metni: "39 = 2x+x",a: "6",b: "8",c: "9",d: "13",cevap: "D"),
  Soru(soru_metni: "40/2",a: "0",b: "7",c: "9",d: "20",cevap: "D"),
  Soru(soru_metni: "29+99",a: "128",b: "42",c: "93",d: "106",cevap: "A"),
  Soru(soru_metni: "61+61",a: "109",b: "122",c: "119",d: "164",cevap: "B"),
  Soru(soru_metni: "1+61",a: "60",b: "67",c: "58",d: "64",cevap: "B"),
];
}




TestYapisi45 benimSorum45 = new TestYapisi45();
class TestYapisi45 extends TestYapisi{
int aktifSoru = 0;


List<Soru> Sorular =[
  Soru(soru_metni: "√625x√625",a: "700",b: "605",c: "625",d: "600",cevap: "C"),
  Soru(soru_metni: "9+8x9",a: "93",b: "71",c: "81",d: "77",cevap: "C"),
  Soru(soru_metni: "9+9x9",a: "74",b: "89",c: "96",d: "90",cevap: "D"),
  Soru(soru_metni: "9/9+5",a: "10",b: "9",c: "6",d: "8",cevap: "C"),
  Soru(soru_metni: "9x+9 = 36",a: "0",b: "3",c: "9",d: "8",cevap: "B"),
  Soru(soru_metni: "43+41",a: "84",b: "130",c: "110",d: "69",cevap: "A"),
  Soru(soru_metni: "81-17",a: "89",b: "75",c: "69",d: "64",cevap: "D"),
  Soru(soru_metni: "51-7",a: "49",b: "45",c: "54",d: "44",cevap: "D"),
];
}
