import 'dart:io';

void main() {
  print("ingrese el primer numero: ");
  double? num1 = double.parse(stdin.readLineSync()!);

  print("ingrese el segundo numero: ");
  double? num2 = double.parse(stdin.readLineSync()!);

  const indeterminado = "Indeterminado";
  if (num1 != Null && num2 != Null) {
    print('Suma : ${num1 + num2}');
    print('Resta : ${num1 - num2}');
    print('Multiplicacion : ${num1 * num2}');
    print('Division : ${(num2 != 0) ? (num1 / num2) : indeterminado}');
  } else {
    print("Por favor ingrese valores válidos");
  }
}
