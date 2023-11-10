class Camera{
  int _id;
  String _brand;
  String _color;
  int _prize;

  Camera(this._id,this._brand,this._color,this._prize);

  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  int get prize => _prize;

  set id(int id){
    _id = id;
  }

  set brand(String brand){
    _brand = brand;
  }

  set color(String color){
    _color = color;
  }

  set prize(int prize){
    _prize = prize;
  }

  void kamera_detaylari(){
    print("Kamera ID: $id");
    print("Kamera Markası: $brand");
    print("Kamera Rengi: $color");
    print("Kamera Fiyati: $prize₺\n");
  }
}

void main(){

  print("Kameraların Özellikleri Yazdırılıyor...\n");
  Camera kamera1 = Camera(1,"Canon","Siyah",2500);
  Camera kamera2 = Camera(2,"Sony","Beyaz",3500);
  Camera kamera3 = Camera(3,"Nokia","Turuncu",5500);

  kamera1.kamera_detaylari();
  kamera2.kamera_detaylari();
  kamera3.kamera_detaylari();
}