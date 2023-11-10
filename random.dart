import 'dart:math';

generateRandom() {
  var deneme = Random().nextBool() ? 100 : null;
  return deneme;
}

void main(List<String> args) {
  var deger = generateRandom();
  print(deger);
}
