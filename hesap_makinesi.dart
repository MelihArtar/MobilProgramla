import 'dart:io';

toplama(num1,num2){
    return num1 + num2;
}

cikarma(num1,num2){
    return num1 - num2;
}

carpma(num1,[num2 = 1]){
    return num1 * num2;
}

bolme(double num1,[num2 = 1]){
    return num1 / num2;
}
kontrol({required int islem_kontrol}){
    if(islem_kontrol > 5){
        print("\nHatali Tuslama Yaptiniz!\n");
    }
}

void main(){

    int sonuc = 0;
    bool start = true;

    while(start){

        print("Yapmak Istediginiz Islemi Giriniz:");
        print("1-Toplama\n2-Cikarma\n3-Carpma\n4-Bolme\n5-Cikis");

        int islem = int.parse(stdin.readLineSync()!);
        kontrol(islem_kontrol: islem);

    
        switch(islem){
            case 1:
                print("\nToplanacak Sayiları Giriniz:");
                int num1 = int.parse(stdin.readLineSync()!);
                stdout.write("$num1 + ");
                int num2 = int.parse(stdin.readLineSync()!);
                sonuc = toplama(num1,num2);
                print("$num1 + $num2 = $sonuc\n");
            break;
            case 2:
                print("\nCikarilacak Sayiları Giriniz:");
                int num1 = int.parse(stdin.readLineSync()!);
                stdout.write("$num1 - ");
                int num2 = int.parse(stdin.readLineSync()!);
                sonuc = cikarma(num1,num2);
                print("$num1 - $num2 = $sonuc\n");
            break;
            case 3:
                print("\nCarpilacak Sayiları Giriniz:");
                int num1 = int.parse(stdin.readLineSync()!);
                stdout.write("$num1 * ");
                var num2 = stdin.readLineSync() ?? '';

                if(num2 == ""){
                    sonuc = carpma(num1);
                    print("$num1 * 1 = $sonuc\n");
                }
                else{
                    int new_num2 = int.parse(num2);
                    sonuc = carpma(num1,new_num2);
                    print("$num1 * $new_num2 = $sonuc\n");
                }
            break;  
            case 4:
                print("\nBolunecek Sayiları Giriniz:");
                double num1 = double.parse(stdin.readLineSync()!);
                stdout.write("$num1 / ");
                var num2 = stdin.readLineSync() ?? '';

                if(num2 == ""){
                    double bolme_sonuc = bolme(num1);
                    String sum = bolme_sonuc.toStringAsFixed(4);
                    print("$num1 / 1 = $sum\n");
                }
                else{
                    double new_num2 = double.parse(num2);
                    double bolme_sonuc = bolme(num1,new_num2);
                    String sum = bolme_sonuc.toStringAsFixed(4);
                    print("$num1 / $new_num2 = $sum\n");
                }
            break;  
            case 5:
                start = false;
            break;
        }    
    }
}