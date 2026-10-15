import 'package:flutter/material.dart';
import '../../controladores/ejercicio4_controlador.dart';
import '../../modelos/ejercicio4_modelo.dart';


class Ejercicio4Pantalla extends StatefulWidget {
  const Ejercicio4Pantalla({super.key});

  @override
  State<Ejercicio4Pantalla> createState() =>
      _Ejercicio4PantallaState();
}

class _Ejercicio4PantallaState extends State<Ejercicio4Pantalla> {
  final TextEditingController txtNumero = TextEditingController();

  Ejercicio4Controlador controlador = Ejercicio4Controlador();

  String resultado = '';

  void verificar() {
    int? numero = int.tryParse(txtNumero.text);

    if (numero == null || numero <= 0) {
      setState(() {
        resultado = 'Ingrese un entero positivo válido';
      });
    } else {
      Ejercicio4Modelo datos = controlador.calcular(numero);
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
        title: const Text('Números perfectos'),
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