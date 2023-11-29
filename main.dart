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
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
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
            const SizedBox(height: 64.0),
            Container(
              margin: const EdgeInsets.all(15.0),
              height: 80.0,
              child: const FlutterLogo(
                style: FlutterLogoStyle.horizontal,
                size: 512,
              ),
            ),
            SizedBox(height: 32.0),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  // Düğmeye tıklandığında yapılacak işlemler buraya yazılır.
                  print('TextButton\'a tıklandı!');
                },
                child: const Text(
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
                // Burada kullanıcı adı ve şifreyi kontrol edebilirsiniz.
                String username = _usernameController.text;
                String password = _passwordController.text;

                // Örnek olarak, basit bir kontrol yapalım.
                if (username == 'user' && password == 'password') {
                  // Kullanıcı girişi başarılı
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Login successful!'),
                    ),
                  );
                } else {
                  // Kullanıcı girişi başarısız
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('Login failed. Please check your credentials.'),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                fixedSize: Size(250, 20),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(height: 64.0),
            Container(
              margin: const EdgeInsets.all(0.0),
              child: TextButton(
                onPressed: () {
                  // Düğmeye tıklandığında yapılacak işlemler buraya yazılır.
                  print('TextButton\'a tıklandı!');
                },
                child: const Text(
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