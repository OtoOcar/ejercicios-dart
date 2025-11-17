void main() {
  Cuadrado cuad = Cuadrado();
  cuad.base = 20;
  cuad.altura = 40;
  print("el area del cuadrado es: ${cuad.area}");
  print("el perimetro del cuadrado es: ${cuad.perimetro}");
  print("el lado del cuadrado es: ${cuad.lado}");
}

class Rectangulo {
  double? base;
  double? altura;

  double get area => (base! * altura!);
  double get perimetro => 2 * (base! + altura!);
}

class Cuadrado extends Rectangulo {
  set lado(double lado) {
    base = lado;
    altura = lado;
  }

  double get lado => base!;
}
