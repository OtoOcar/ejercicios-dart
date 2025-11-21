import 'dart:io';

import 'challenges/index.dart';
import 'menu/index.dart';

void main() {
  stdout.write("Ingrese su nombre: ");
  String? nombre = stdin.readLineSync();

  print("\nHola, $nombre!\nPor favor, elige una opción del siguiente menú:\n");
  Menu.mostrarMenu();

  while (true) {
    stdout.write("\nOpción: ");
    String? opcion = stdin.readLineSync();

    if (opcion == null) continue;

    opcion = opcion.toLowerCase();

    // Salida
    if (opcion == "q" || opcion == "exit") {
      break;
    }

    // Validar número
    int? numeroOpcion = int.tryParse(opcion);

    if (numeroOpcion != null && numeroOpcion >= 1 && numeroOpcion <= 15) {
      switch (numeroOpcion) {
        case 1:
          Challenge1.run();
          break;
        case 2:
          Challenge2.run();
          break;
        case 3:
          Challenge3.run();
          break;
        case 4:
          Challenge4.run();
          break;
        case 5:
          Challenge5.run();
          break;
        case 6:
          Challenge6.run();
          break;
        case 7:
          Challenge7.run();
          break;
        case 8:
          Challenge8.run();
          break;
        case 9:
          Challenge9.run();
          break;
        case 10:
          Challenge10.run();
          break;
        case 11:
          Challenge11.run();
          break;
        case 12:
          Challenge12.run();
          break;
        case 13:
          Challenge13.run();
          break;
        case 14:
          Challenge14.run();
          break;
        case 15:
          Challenge15.run();
          break;
        default:
          print("\nOpción fuera de rango.");
      }
    } else {
      print(
        "\nOpción no válida. Por favor elige una del menú o 'q' para salir.\n",
      );
    }

    print("\nPresione ENTER para volver al menú...");
    stdin.readLineSync();

    print("\x1B[2J\x1B[0;0H"); // Limpiar pantalla estilo terminal
    print("\nPor favor, elige una opción del siguiente menú:\n");
    Menu.mostrarMenu();
  }

  print("Gracias por usar el programa. ¡Adiós!");
}
