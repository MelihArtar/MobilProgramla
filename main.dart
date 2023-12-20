import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 70.0),
            SizedBox(width: 5.0),
            Text(
              'Oyun Satış',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(129, 42, 108, 206),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 64.0),
              Container(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 100,
                ),
              ),
              SizedBox(height: 32.0),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  hintText: 'Kullanıcı Adı',
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Şifre',
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(129, 42, 108, 206)),
                onPressed: () {
                  String username = _usernameController.text;
                  String password = _passwordController.text;

                  if (username.isEmpty || password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Lütfen Kullanıcı Adı Ve Şifre Giriniz!'),
                      ),
                    );
                    return;
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Giriş Başarılı Alışveriş Sayfasına yönlendiriliyorsunuz.'),
                      ),
                    );
                  }
                  // Navigator ile ikinci sayfaya geçiş
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShoppingScreen(
                        username: username,
                        password: password,
                      ),
                    ),
                  );
                },
                child: Text('Giriş',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 91, 218, 223),
    );
  }
}

class Product {
  String image;
  String name;
  double price;

  Product(
    this.image,
    this.name,
    this.price,
  );
}

class ShoppingScreen extends StatelessWidget {
  final String username;
  final String password;
  final List<Product> selectedProducts = [];

  final List<Product> products = [
    Product('assets/images/dolunay.png', 'Dolunay Kılıcı +9', 15),
    Product('assets/images/elmas.png', 'Clash Of Clans 1500 Elmas', 100),
    Product('assets/images/vp.png', 'Valorant 1080 Point', 31),
    Product('assets/images/vpapel.png', 'Fortnite 2000 V-Papel', 40)
  ];

  ShoppingScreen({required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 50.0),
            Image.asset(
              "assets/images/logo.png",
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 20.0,
            ),
            Text(
              'Hoşgeldin \n$username',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20.0,
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(129, 42, 108, 206),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              products[index].image,
              width: 50,
              height: 50,
            ),
            title: Text(products[index].name,
                style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
            subtitle: Text('\$${products[index].price.toStringAsFixed(2)}',
                style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart,
                  color: Color.fromARGB(255, 0, 0, 0)),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Sepete Eklendi.'),
                    duration: Duration(seconds: 2),
                  ),
                );
                selectedProducts.add(products[index]);
              },
            ),
          );
        },
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 91, 218, 223),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(129, 42, 108, 206),
                ),
                child: Text(
                  'Menu ',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              ListTile(
                title: const Text(
                  'Sepet',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                leading: Icon(Icons.shopping_cart,
                    color: Color.fromARGB(255, 0, 0, 0)),
                onTap: () {
                  // Navigate to CartScreen and pass selectedProducts
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(selectedProducts),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  'Çıkış',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                leading: Icon(Icons.exit_to_app,
                    color: Color.fromARGB(255, 0, 0, 0)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 91, 218, 223),
      ),
      backgroundColor: Color.fromARGB(255, 91, 218, 223),
    );
  }
}

class CartScreen extends StatelessWidget {
  final List<Product> selectedProducts;

  CartScreen(this.selectedProducts);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(129, 42, 108, 206),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        title: Text('Sepet',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
      ),
      body: ListView.builder(
        itemCount: selectedProducts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              selectedProducts[index].image,
              width: 50,
              height: 50,
            ),
            title: Text(selectedProducts[index].name,
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            subtitle: Text(
                '\$${selectedProducts[index].price.toStringAsFixed(2)}',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            trailing: IconButton(
              icon: Icon(Icons.remove_shopping_cart,
                  color: Color.fromARGB(255, 0, 0, 0)),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Sepetten Çıkartıldı.'),
                    duration: Duration(seconds: 2),
                  ),
                );
                selectedProducts.remove(selectedProducts[index]);
              },
            ),
          );
        },
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 91, 218, 223),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(129, 42, 108, 206),
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              ListTile(
                title: const Text('Alışveriş Ekranı',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                leading: Icon(Icons.shopping_cart_outlined,
                    color: Color.fromARGB(255, 0, 0, 0)),
                onTap: () {
                  Navigator.pop(context); // Close the Drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShoppingScreen(
                        username: '', // Provide the required information
                        password: '', // Provide the required information
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  'Çıkış',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                leading: Icon(Icons.exit_to_app,
                    color: Color.fromARGB(255, 0, 0, 0)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 91, 218, 223),
    );
  }
}
