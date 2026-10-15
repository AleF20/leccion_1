import 'package:flutter/material.dart';
import 'package:leccion_1/rutas.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leccion No1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.tealAccent),
      ),
      initialRoute: '/',
      routes: Rutas.obtenerRutas(),
    );
  }
}
