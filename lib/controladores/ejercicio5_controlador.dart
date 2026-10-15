import '../modelos/ejercicio5_modelo.dart';

class Ejercicio5Controlador {
  Ejercicio5Modelo calcular(int numero) {
    Ejercicio5Modelo datos = Ejercicio5Modelo(numero);
    int a = 0;
    int b = 1;
    int siguiente;
    for (int i = 1; i <= numero; i++) {
      datos.resultado.add(a);
      siguiente = a + b;
      a = b;
      b = siguiente;
    }
    return datos;
  }
}