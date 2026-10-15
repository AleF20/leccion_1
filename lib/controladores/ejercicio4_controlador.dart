import '../modelos/ejercicio4_modelo.dart';

class Ejercicio4Controlador {
  Ejercicio4Modelo calcular(int numero) {
    Ejercicio4Modelo datos = Ejercicio4Modelo(numero);
    int suma = 0;
    for (int i = 1; i < numero; i++) {
      if (numero % i == 0) {
        suma = suma + i;
      }
    }
    if (suma == numero) {
      datos.resultado = 'Es un número perfecto';
    } else {
      datos.resultado = 'No es un número perfecto';
    }
    return datos;
  }
}