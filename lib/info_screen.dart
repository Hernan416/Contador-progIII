import 'package:flutter/material.dart';

// Es un StatelessWidget porque la info no cambia
class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Base de la pantalla
    return Scaffold(
      // Barra de arriba
      appBar: AppBar(
        title: const Text('Información del Dev(Yo)'),
        // Flutter pone la flecha de regreso automaticamente
      ),
      // Cuerpo
      body: Center(
        child: Column(
          // Centrado
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 80, color: Colors.blue),
            const SizedBox(height: 20),
            const Text(
              'Desarrollado por:',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'Hernán Narváez', // Cambia esto por tu nombre
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Estudiante de Programación III - UNIMAR',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(height: 30),
            // Boton para regresar a la pantalla anterior
            ElevatedButton(
              onPressed: () {
                // Navigator.pop saca la pantalla actual y vuelve a la anterior
                Navigator.pop(context);
              },
              child: const Text('Regresar al Contador'),
            ),
          ],
        ),
      ),
    );
  }
}
