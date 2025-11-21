import 'dart:io';

import '../validaciones.dart';

class Challenge1 {
  static void run() {
    int num = Validaciones.leerEntero("Ingrese un número:");
    if (num > 0)
      print("El número es positivo.");
    else if (num < 0)
      print("El número es negativo.");
    else
      print("El número es cero.");
  }
}

class Challenge2 {
  static void run() {
    int num1 = Validaciones.leerEntero("Ingrese el primer número:");
    int num2 = Validaciones.leerEntero("Ingrese el segundo número:");

    print("Suma: ${num1 + num2}");
    print("Resta: ${num1 - num2}");
    print("Multiplicación: ${num1 * num2}");

    if (num2 != 0) {
      print("División: ${num1 / num2}");
    } else {
      print("División: No se puede dividir por cero.");
    }
  }
}

class Challenge3 {
  static void run() {
    int largo = Validaciones.leerEntero("Ingrese el largo del rectángulo:");
    int ancho = Validaciones.leerEntero("Ingrese el ancho del rectángulo:");

    int area = largo * ancho;
    int perimetro = 2 * (largo + ancho);

    print("Área: $area");
    print("Perímetro: $perimetro");
  }
}

class Challenge4 {
  static void run() {
    int year = Validaciones.leerEntero("Ingrese un año:");

    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
      print("$year es un año bisiesto.");
    else
      print("$year no es un año bisiesto.");
  }
}

class Challenge5 {
  static void run() {
    int num1 = Validaciones.leerEntero("Ingrese el primer número:");
    int num2 = Validaciones.leerEntero("Ingrese el segundo número:");
    int num3 = Validaciones.leerEntero("Ingrese el tercer número:");

    int mayor = [num1, num2, num3].reduce((a, b) => a > b ? a : b);
    print("El número mayor es: $mayor");
  }
}

class Challenge6 {
  static void run() {
    int num = Validaciones.leerEntero(
      "Ingrese un número para calcular su factorial:",
    );

    if (num < 0) {
      print("El factorial no está definido para números negativos.");
      return;
    }

    int factorial = 1;
    for (int i = 2; i <= num; i++) {
      factorial *= i;
    }

    print("El factorial de $num es: $factorial");
  }
}

class Challenge7 {
  static void run() {
    int num1 = Validaciones.leerEntero("Ingrese el dividendo:");
    int num2 = Validaciones.leerEntero("Ingrese el divisor:");

    if (num2 == 0) {
      print("Error: No se puede dividir por cero.");
      return;
    }

    print("El resultado de la división es: ${num1 / num2}");
  }
}

class Challenge8 {
  static void run() {
    int suma = 0;
    for (int i = 1; i <= 100; i += 2) {
      suma += i;
    }
    print("La suma de los números impares entre 1 y 100 es: $suma");
  }
}

class Challenge9 {
  static void run() {
    int num1 = Validaciones.leerEntero(
      "Ingrese numerador de la primera fracción:",
    );
    int den1 = Validaciones.leerDenominador(
      "Ingrese denominador de la primera fracción:",
    );

    int num2 = Validaciones.leerEntero(
      "Ingrese numerador de la segunda fracción:",
    );
    int den2 = Validaciones.leerDenominador(
      "Ingrese denominador de la segunda fracción:",
    );

    // Suma
    print("Suma: ${num1 * den2 + num2 * den1}/${den1 * den2}");

    // Resta
    print("Resta: ${num1 * den2 - num2 * den1}/${den1 * den2}");

    // Multiplicación
    print("Multiplicación: ${num1 * num2}/${den1 * den2}");

    // División
    if (num2 == 0) {
      print("Error: No se puede dividir por fracción con numerador cero.");
      return;
    }

    print("División: ${num1 * den2}/${den1 * num2}");
  }
}

class Challenge10 {
  static void run() {
    int num = Validaciones.leerEntero("Ingrese un número:");
    print(num % 2 != 0 ? "El número es impar." : "El número no es impar.");
  }
}

class Challenge11 {
  static void run() {
    List<int> numeros = [];

    for (int i = 0; i < 5; i++) {
      numeros.add(Validaciones.leerEntero("Ingrese el número ${i + 1}:"));
    }

    print("Los números ingresados son:");
    for (var n in numeros) {
      print(n);
    }
  }
}

class Challenge12 {
  static void run() {
    print("El perro dice: ¡Guau!");
    print("El gato dice: ¡Miau!");
    print("La vaca dice: ¡Muu!");
    print("El pato dice: ¡Cuac!");
  }
}

class Challenge13 {
  static void run() {
    int edad = Validaciones.leerEntero("Ingrese su edad:");

    if (edad < 0)
      print("Edad inválida.");
    else if (edad <= 12)
      print("Categoría: Niño.");
    else if (edad <= 19)
      print("Categoría: Adolescente.");
    else if (edad <= 59)
      print("Categoría: Adulto.");
    else
      print("Categoría: Adulto mayor.");
  }
}

class Challenge14 {
  static void run() {
    List<Map<String, String>> agenda = [];

    for (int i = 0; i < 3; i++) {
      stdout.write("Ingrese el nombre del contacto: ");
      String nombre = stdin.readLineSync() ?? "";

      stdout.write("Ingrese el teléfono del contacto: ");
      String telefono = stdin.readLineSync() ?? "";

      agenda.add({"nombre": nombre, "telefono": telefono});
    }

    print("\nContactos en la agenda:");
    for (var c in agenda) {
      print("Nombre: ${c['nombre']}, Teléfono: ${c['telefono']}");
    }
  }
}

class Challenge15 {
  static void run() {
    double saldo = 0;

    while (true) {
      print("\nSeleccione una operación:");
      print("1. Depositar");
      print("2. Retirar");
      print("3. Consultar saldo");
      print("q. Salir");

      String? opcion = stdin.readLineSync();

      if (opcion == "q") break;

      switch (opcion) {
        case "1":
          double dep = Validaciones.leerEntero(
            "Ingrese el monto a depositar:",
          ).toDouble();
          if (dep > 0) {
            saldo += dep;
            print("Depósito exitoso. Nuevo saldo: $saldo");
          } else {
            print("Monto inválido.");
          }
          break;

        case "2":
          double ret = Validaciones.leerEntero(
            "Ingrese el monto a retirar:",
          ).toDouble();
          if (ret > 0 && ret <= saldo) {
            saldo -= ret;
            print("Retiro exitoso. Nuevo saldo: $saldo");
          } else {
            print("Monto inválido o saldo insuficiente.");
          }
          break;

        case "3":
          print("Saldo actual: $saldo");
          break;

        default:
          print("Opción no válida.");
      }
    }
  }
}
