import 'package:flutter/material.dart';
import '../info_screen.dart'; // Importamos la pantalla de informacion

// Creamos un StatefulWidget porque el contador cambia
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Variable para guardar el valor del contador
  int contador = 0;

  // Funcion para sumar 1
  void sumar() {
    setState(() {
      contador = contador + 1;
    });
  }

  // Funcion para restar 1
  void restar() {
    setState(() {
      contador = contador - 1;
    });
  }

  // Funcion para reiniciar a 0
  void resetear() {
    setState(() {
      contador = 0;
    });
  }

  // Funcion para multiplicar por 2
  void multiplicar() {
    setState(() {
      contador = contador * 2;
    });
  }

  // Funcion para dividir entre 2
  void dividir() {
    setState(() {
      // Usamos .toInt() para que el resultado sea un numero entero
      contador = (contador / 2).toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold es la base de la pantalla
    return Scaffold(
      // Barra de arriba (AppBar)
      appBar: AppBar(
        title: const Text('Mi Contador (Info de mí =>)'),
        // Acciones son botones a la derecha
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            // Navegacion a la pantalla de info
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InfoScreen()),
              );
            },
          ),
        ],
      ),
      // Cuerpo de la aplicacion
      body: Center(
        // Columna para organizar widgets verticalmente
        child: Column(
          // Centramos la columna
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Valor del contador:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              // Mostramos el valor del contador
              '$contador',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            // Espacio
            const SizedBox(height: 20),
            // Fila para los botones de sumar y restar
            Row(
              // Centramos la fila
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Boton de sumar
                ElevatedButton.icon(
                  onPressed: sumar,
                  icon: const Icon(Icons.add),
                  label: const Text('Sumar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Color verde
                  ),
                ),
                // Espacio entre botones
                const SizedBox(width: 10),
                // Boton de restar
                ElevatedButton.icon(
                  onPressed: restar,
                  icon: const Icon(Icons.remove),
                  label: const Text('Restar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Color rojo
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // Usamos la propiedad floatingActionButton para los otros botones
      // Ponemos una Columna para agregar varios botones
      floatingActionButton: Column(
        // Los alineamos abajo
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Boton de reset
          FloatingActionButton(
            onPressed: resetear,
            tooltip: 'Resetear',
            child: const Icon(Icons.refresh),
            heroTag: 'fab1', // Tag para que no de error
          ),
          // Espacio
          const SizedBox(height: 10),
          // Boton de multiplicar
          FloatingActionButton(
            onPressed: multiplicar,
            tooltip: 'Multiplicar x2',
            child: const Text('x2'),
            heroTag: 'fab2',
          ),
          // Espacio
          const SizedBox(height: 10),
          // Boton de dividir
          FloatingActionButton(
            onPressed: dividir,
            tooltip: 'Dividir /2',
            child: const Text('/2'),
            heroTag: 'fab3',
          ),
        ],
      ),
    );
  }
}
