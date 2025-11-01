import 'package:flutter/material.dart';
import '../home_screen.dart'; // Importamos la pantalla principal

// Funcion principal que corre la App
void main() {
  runApp(MyApp());
}

// Este es el Widget principal de la aplicacion
class MyApp extends StatelessWidget {
  
  // Constructor de la clase
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Usamos MaterialApp para el diseno
    return MaterialApp(
      // Quitamos la cinta de "DEBUG"
      debugShowCheckedModeBanner: false,
      title: 'App Contador',
      // Tema de la aplicacion
      theme: ThemeData(
        primarySwatch: Colors.blue, // Color principal
      ),
      // Le decimos que la pantalla de inicio es HomeScreen
      home: HomeScreen(),
    );
  }
}
