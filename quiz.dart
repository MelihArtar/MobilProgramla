import 'dart:io';

class Soru {
  String cevap;
  int id;

  Soru(this.cevap,this.id);
}

void main(){

String? cevap;
int puan = 0;

Soru soru1 = Soru("c",1);
Soru soru2 = Soru("e",2);
Soru soru3 = Soru("a",3);
Soru soru4 = Soru("c",4);
Soru soru5 = Soru("d",5);
Soru soru6 = Soru("a",6);
Soru soru7 = Soru("c",7);
Soru soru8 = Soru("a",8);
Soru soru9 = Soru("a",9);
Soru soru10 = Soru("c",10);

print("Turk Dizileri Testimize Hosgeldiniz!\n(Her Soru 10 Puandır Lütfen Cevaplarınızı Küçük Harfle Yazınız)");
print("\nSoru-1\nSüleyman Çakır Hangi Bölümde Vurulmuştur?\nA-41\nB-42\nC-43\nD-44\nE-45\n");
cevap = stdin.readLineSync();
if(soru1.cevap == cevap) puan = puan + 10; 

print("\nSoru-2\nSüleyman Çakır Hangi Bölümde Ölmüştür?\nA-41\nB-42\nC-43\nD-44\nE-45\n");
cevap = stdin.readLineSync();
if(soru2.cevap == cevap) puan = puan + 10; 

print("\nSoru-3\nPolat Alemdar ın Ölmeden Önceki İsmi Nedir?\nA-Ali\nB-Mehmet\nC-Ömer\nD-Karahanlı\nE-Necmi\n");
cevap = stdin.readLineSync();
if(soru3.cevap == cevap) puan = puan + 10; 

print("\nSoru-4\Aşağıdakilerden Hangisi Akasya Durağında Görevli Olan Taksicilerden Biri Değildir?\nA-Sinan\nB-Osman\nC-Gülibik\nD-Seyit\nE-Arif\n");
cevap = stdin.readLineSync();
if(soru4.cevap == cevap) puan = puan + 10; 

print("\nSoru-5\nZengin Kız Fakir Oğlan Dizisineki Sakarlıkları Meşhur Olan Kişi Kimdir?\nA-Sarp\nB-Şükrü\nC-Rüyam\nD-Nurhan\nE-Burhan\n");
cevap = stdin.readLineSync();
if(soru5.cevap == cevap) puan = puan + 10; 

print("\nSoru-6\nCennet Mahallesinde Pembe nin En Sevdiği Şey Nedir?\nA-Para\nB-Ayakkabı\nC-Kıyafet\nD-Pasta\nE-Toka\n");
cevap = stdin.readLineSync();
if(soru6.cevap == cevap) puan = puan + 10; 

print("\nSoru-7\nKuzey Güney Dizisinde Arabayla Kazayı Asıl Yapan Kişi Kimdir?\nA-Sami\nB-Barış\nC-Güney\nD-Kuzey\nE-Ali\n");
cevap = stdin.readLineSync();
if(soru7.cevap == cevap) puan = puan + 10; 

print("\nSoru-8\nKuzey Güney Dizisinde Kuzeyin Düşmanının İsmi Nedir?\nA-Ferhat\nB-Ali\nC-Sami\nD-Cemre\nE-Handan\n");
cevap = stdin.readLineSync();
if(soru8.cevap == cevap) puan = puan + 10; 

print("\nSoru-9\nLeyla İle Mecnun Dizisinde Mecnun Leyla nın Nişanını Ney İle Basmıştır?\nA-Atla\nB-Ucan Süpürge\nC-Araba\nD-Ucan Halı\nE-Uçak\n");
cevap = stdin.readLineSync();
if(soru9.cevap == cevap) puan = puan + 10; 

print("\nSoru-10\nLeyla İle Mecnun Dizisinde Mecnun Leylayı İlk Buluşmalarında Nereye Götürmüştür?\nA-Sahil\nB-Düğün\nC-Erdal Bakkal\nD-Fabrika\nE-Yozgat");
cevap = stdin.readLineSync();
if(soru10.cevap == cevap) puan = puan + 10; 

print("Testimiz Bitmiştir Sonucunuz:${puan}puan Tebrikler!");
}