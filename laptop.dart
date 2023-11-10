class Laptop{
  String? name;
  int? ram;
  int? id;

  Laptop(this.name,this.ram,this.id);

  void laptop_detaylari() {
    print("Leptop Ismi: $name" );
    print("Laptop ID: $id");
    print("Laptop RAM: ${ram} GB\n");
  }
}

void main() {
  Laptop laptop1 = Laptop("Monster",16,1);
  Laptop laptop2 = Laptop("Asus",32,2);
  Laptop laptop3 = Laptop("Excalibur",8,3);

  print("Laptopların Detayları Yazdırılıyor...\n");
  laptop1.laptop_detaylari();
  laptop2.laptop_detaylari();
  laptop3.laptop_detaylari();
}