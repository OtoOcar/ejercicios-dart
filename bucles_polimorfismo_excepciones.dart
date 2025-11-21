import 'dart:math';
import 'dart:io';

void main() {
  Circulo circ = Circulo(10);
  circ.radio = 10;
  var resultado_area = circ.area();
  var resultado_perimetro = circ.perimetro();

  print("El área del círculo es: $resultado_area");
  print("El perímetro del círculo es: $resultado_perimetro");
  print("el nuevo radio es: ${circ.radio}");

  int prev = 0, next = 1, sum;
  for (int i = 0; i < 10; i++) {
    print(prev);
    sum = prev + next;
    prev = next;
    next = sum;
  }

  try {
    print("número a dividir: ");
    double numero = double.parse(stdin.readLineSync()!);
    print("divisor: ");
    double divisor = double.parse(stdin.readLineSync()!);

    if (divisor == 0) {
      throw ArgumentError("No se puede dividir por cero");
    }

    print("Resultado : ${numero / divisor}");
  } on ArgumentError catch (e) {
    print(e.message);
  } catch (e) {
    print("Error desconocido:");
  }
}

abstract class ExtraCalculations {
  double add10();
}

abstract class Figura {
  double area();
  double perimetro();
}

class Circulo implements Figura, ExtraCalculations {
  double radio;

  Circulo(this.radio);

  @override
  double area() {
    return pi * radio * radio;
  }

  @override
  double perimetro() {
    return 2 * pi * radio;
  }

  @override
  double add10() {
    return radio + 10;
  }
}
