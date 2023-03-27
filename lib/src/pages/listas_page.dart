import 'package:flutter/material.dart';

class ListasPage extends StatefulWidget {
  @override
  LoginPage createState() => LoginPage();
}

class LoginPage extends State<ListasPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void limpiar() {
    _usernameController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        GradientBackground(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            Text(
              'Login',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 45.0,
                fontWeight: FontWeight.w600,
                color: Colors.lightBlue,
              ),
            ),
            Image.asset(
              'images/Dogo.png',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  hoverColor: const Color.fromARGB(255, 255, 255, 255),
                  labelText: 'Usuario',
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hoverColor: const Color.fromARGB(255, 255, 255, 255),
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/list2');
                  },
                  child: Text('Ingresar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: limpiar,
                  child: Text('Limpiar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 59, 136, 175),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}

class GradientBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color.fromARGB(255, 138, 26, 18),
            Color.fromARGB(255, 73, 45, 109),
          ],
        ),
      ),
    );
  }
}
