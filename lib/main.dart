import 'package:componentes/src/pages/lista2_page.dart';
import 'package:componentes/src/pages/listas_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: ListasPage(),
      ),
      onGenerateRoute: (RouteSettings settings) {
        //definir las rutas de nuestra app
        switch (settings.name) {
          case '/list2':
            return MaterialPageRoute(builder: (_) => Lista2Page());
          default:
            return MaterialPageRoute(builder: (_) => ListasPage());
        }
      },
    );
  }
}
