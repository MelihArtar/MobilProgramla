class Ev{
  int? id;
  String? name;
  int? prize;

  Ev(this.id,this.name,this.prize);
}

void main(){
  Ev ev1 = Ev(1,"Atakent Evleri",15000);
  Ev ev2 = Ev(2,"Türkiş Evleri",12750);
  Ev ev3 = Ev(3,"Körfez Evleri",22500);

  List<Ev> evler = [ev1,ev2,ev3];

  print("Listedeki Evlerin Gösterimi\n");
  
  int s = 0;
  int i = 1;
  while(i<4){
    print("$i. Evin Özellikleri");
    print("Ev ID: ${evler[s].id}");
    print("Evin Ismi: ${evler[s].name}");
    print("Evin Fiyatı: ${evler[s].prize}₺\n");
    i++;
    s++;
  }

}