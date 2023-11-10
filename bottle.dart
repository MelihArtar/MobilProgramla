abstract class Bottle {
  void open();
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print("Kola Sisesi Acildi!!");
  }
}

Bottle createBottle() {
  return CokeBottle();
}

void main() {
  Bottle cokeBottle = createBottle();

  cokeBottle.open();
}
