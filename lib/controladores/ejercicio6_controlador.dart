import '../modelos/ejercicio6_modelo.dart';
class Ejercicio6Controlador {
  Ejercicio6Modelo calcular(int numero) {
    Ejercicio6Modelo datos = Ejercicio6Modelo(numero);

    int original = numero;
    int temporal = numero;
    int cifras = 0;
    int suma = 0;
    while (temporal > 0) {
      cifras = cifras + 1;
      temporal = temporal ~/ 10;
    }
    temporal = numero;
    while (temporal > 0) {
      int digito = temporal % 10;
      int potencia = 1;
      for (int i = 1; i <= cifras; i++) {
        potencia = potencia * digito;
      }
      suma = suma + potencia;
      temporal = temporal ~/ 10;
    }
    if (suma == original) {
      datos.resultado = 'Es un número Armstrong';
    } else {
      datos.resultado = 'No es un número Armstrong';
    }

    return datos;
  }
}