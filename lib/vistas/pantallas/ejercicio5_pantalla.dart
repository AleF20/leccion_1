import 'package:flutter/material.dart';
import '../../controladores/ejercicio5_controlador.dart';
import '../../modelos/ejercicio5_modelo.dart';


class Ejercicio5Pantalla extends StatefulWidget {
  const Ejercicio5Pantalla({super.key});

  @override
  State<Ejercicio5Pantalla> createState() =>
      _Ejercicio5PantallaState();
}

class _Ejercicio5PantallaState extends State<Ejercicio5Pantalla> {
  final TextEditingController txtNumero = TextEditingController();

  Ejercicio5Controlador controlador = Ejercicio5Controlador();

  String resultado = '';

  void generar() {
    int? numero = int.tryParse(txtNumero.text);

    if (numero == null || numero <= 0) {
      setState(() {
        resultado = 'Ingrese una cantidad positiva válida';
      });
    } else {
      Ejercicio5Modelo datos = controlador.calcular(numero);

      setState(() {
        resultado = datos.resultado.join(', ');
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
  void dispose() {
    txtNumero.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Serie de Fibonacci'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: txtNumero,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Cantidad de términos',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: generar,
              child: const Text('Generar serie'),
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
        child: const Icon(Icons.clear),
      ),
    );
  }
}