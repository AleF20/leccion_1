import 'package:flutter/material.dart';
import 'package:leccion_1/vistas/pantallas/ejercicio4_pantalla.dart';
import 'package:leccion_1/vistas/pantallas/ejercicio5_pantalla.dart';
import 'package:leccion_1/vistas/pantallas/ejercicio6_pantalla.dart';
import 'package:leccion_1/vistas/pantallas/menu_pantalla.dart';

class Rutas {
  static Map<String, WidgetBuilder> obtenerRutas() {
    return {
    '/': (context) => const MenuPantalla(),
    '/ejercicio4': (context) => const Ejercicio4Pantalla(),
    '/ejercicio5': (context) => const Ejercicio5Pantalla(),
    '/ejercicio6': (context) => const Ejercicio6Pantalla(),
    };
  }
}