import 'package:flutter/material.dart';
import '../../controladores/ejercicio6_controlador.dart';
import '../../modelos/ejercicio6_modelo.dart';
class Ejercicio6Pantalla extends StatefulWidget {
  const Ejercicio6Pantalla({super.key});

  @override
  State<Ejercicio6Pantalla> createState() =>
      _Ejercicio6PantallaState();
}

class _Ejercicio6PantallaState extends State<Ejercicio6Pantalla> {
  final TextEditingController txtNumero = TextEditingController();

  Ejercicio6Controlador controlador = Ejercicio6Controlador();
  String resultado = '';
  void verificar() {
    int? numero = int.tryParse(txtNumero.text);
    if (numero == null || numero <= 0) {
      setState(() {
        resultado = 'Ingrese un entero positivo válido';
      });
    } else {
      Ejercicio6Modelo datos = controlador.calcular(numero);
      setState(() {
        resultado = datos.resultado;
      });
    }
  }
  void limpiar() {
    setState(() {
      txtNumero.clear();
      resultado = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Número Armstrong'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: txtNumero,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Ingrese un número',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: verificar,
              child: const Text('Verificar'),
            ),
            const SizedBox(height: 20),
            Text(
              resultado,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: limpiar,
          child: Icon(Icons.clear),
        )
    );
  }
}