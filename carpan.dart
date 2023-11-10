import 'dart:io';

void main(List<String> args) async {
  List<int> liste = <int>[];

  stdout.write("Listenin içereceği eleman sayısı: ");
  var limit = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < limit; i++) {
    stdout.write("${i + 1}. Sayıyı Giriniz:");
    liste.add(int.parse(stdin.readLineSync()!));
  }

  List<int> degistirilmisListe = await multiplyListByTwo(liste);

  print(degistirilmisListe);
}

Future<List<int>> multiplyListByTwo(List<int> list) async {
  List<int> degistirilmisListe = <int>[];

  for (var element in list) {
    int res = await element * 2;

    degistirilmisListe.add(res);
  }

  return degistirilmisListe;
}
