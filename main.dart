import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Pace',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 64.0),
            Container(
              margin: const EdgeInsets.all(15.0),
              height: 80.0,
              child: FlutterLogo(
                style: FlutterLogoStyle.horizontal,
                size: 512,
              ),
            ),
            SizedBox(height: 32.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  // Düğmeye tıklandığında yapılacak işlemler buraya yazılır.
                  print('TextButton\'a tiklandi!');
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Boşluk kontrolü eklendi
                String email = _emailController.text.trim();
                String password = _passwordController.text.trim();

                if (email.isEmpty || password.isEmpty) {
                  // Boşluk kontrolü
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please enter both email and password.'),
                    ),
                  );
                  return;
                }

                // Örnek olarak, basit bir kontrol yapalım.
                if (email == 'user@email.com' && password == 'password') {
                  // Kullanıcı girişi başarılı
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Login successful!'),
                    ),
                  );
                } else {
                  // Kullanıcı girişi başarısız
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Login failed. Please check your email adn password.'),
                    ),
                  );
                  return;
                }

                // Show entered email and password in the Snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'Entered Email: $email\nEntered Password: $password'),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                fixedSize: Size(250, 20),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(height: 64.0),
            Container(
              margin: const EdgeInsets.all(0.0),
              child: TextButton(
                onPressed: () {
                  // Düğmeye tıklandığında yapılacak işlemler buraya yazılır.
                  print('TextButton\'a tiklandi!');
                },
                child: Text(
                  'New User? Create Account',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}