import 'package:flutter/material.dart';

class MenuPantalla extends StatelessWidget {
  const MenuPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú principal'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Leccion1-Ejercicios',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Selecciona un ejercicio para comenzar',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),

          Card(
            elevation: 3,
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: const Text('Ejercicio 4'),
              subtitle: const Text('Números perfectos'),
              onTap: () {
                Navigator.pushNamed(context, '/ejercicio4');
              },
            ),
          ),

          const SizedBox(height: 10),

          Card(
            elevation: 3,
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: const Text('Ejercicio 5'),
              subtitle: const Text('Serie de Fibonacci'),
              onTap: () {
                Navigator.pushNamed(context, '/ejercicio5');
              },
            ),
          ),

          const SizedBox(height: 10),

          Card(
            elevation: 3,
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: const Text('Ejercicio 6'),
              subtitle: const Text('Número Armstrong'),
              onTap: () {
                Navigator.pushNamed(context, '/ejercicio6');
              },
            ),
          ),
        ],
      ),
    );
  }
}