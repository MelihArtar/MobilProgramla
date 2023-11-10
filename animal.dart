class Animal{
  int? id;
  String? name;
  String? color;

  Animal(this.id,this.name,this.color);
}

class Cat extends Animal {
  String? sound;

  Cat(int id,String name,String color,this.sound) : super(id,name,color);

  void Kedi_Detaylari(){
    print("Kedinin Ozellikleri Yazdiriliyor...\n");
    print("Kedinin ID: $id");
    print("Kedinin Ismi: $name");
    print("Kedinin Rengi: $color");
    print("Kedinin Sesi: $sound");
  }
}

void main(){
  Cat kedi1 = Cat(1,"Kar Topu","Beyaz","Miyav");

  kedi1.Kedi_Detaylari();
}