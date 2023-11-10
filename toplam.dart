import 'dart:io';

void main(List<String> args) {
  stdout.write("1.Sayı: ");
  int sayi1 = int.parse(stdin.readLineSync()!);
  stdout.write("2.Sayı: ");
  int sayi2 = int.parse(stdin.readLineSync()!);

  sum(sayi1, sayi2);
}

Future<void> sum(int sayi1, int sayi2) {
  print("3 Saniye bekleniyor");
  return Future.delayed(
      Duration(seconds: 3), () => print("Sonuç: ${sayi1 + sayi2}"));
}
