import 'dart:io';

class Validaciones {
  static int leerEntero(String mensaje) {
    while (true) {
      stdout.write("$mensaje ");
      String? input = stdin.readLineSync();

      int? valor = int.tryParse(input ?? "");
      if (valor != null) return valor;

      print("Entrada inválida. Por favor ingrese un número entero.");
    }
  }

  static int leerDenominador(String mensaje) {
    while (true) {
      int valor = leerEntero(mensaje);
      if (valor != 0) return valor;
      print("El denominador no puede ser cero.");
    }
  }
}
