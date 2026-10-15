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
            'Mis ejercicios',
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
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
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
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
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
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
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