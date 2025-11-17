import 'dart:io';

void main() {
  print('¡Hola! Bienvenido al calculador de años.');
  print('Escribe tu nombre: ');
  String? nameInput = stdin.readLineSync();
  print('Un gusto conocerte, $nameInput.');
  print('Escribe tu fecha de nacimiento (DD-MM-AAAA): ');
  String? dateInput = stdin.readLineSync();

  if (dateInput == null) {
    print('Entrada vacía.');
    return;
  }

  // Parseo manual DD-MM-AAAA
  final parts = dateInput.split('-');
  if (parts.length != 3) {
    print('Formato de fecha inválido. Por favor, usa DD-MM-AAAA.');
    return;
  }

  final day = int.tryParse(parts[0]) ?? -1;
  final month = int.tryParse(parts[1]) ?? -1;
  final year = int.tryParse(parts[2]) ?? -1;

  if (day < 1 || month < 1 || month > 12 || year < 1) {
    print('Fecha inválida.');
    return;
  }

  DateTime birthDate;
  birthDate = DateTime(year, month, day);

  // Cálculo de edad
  final hoy = DateTime.now();
  int age = hoy.year - birthDate.year;
  if (hoy.month < birthDate.month ||
      (hoy.month == birthDate.month && hoy.day < birthDate.day)) {
    age--;
  }

  //Formateo de fecha a DD-MM-AAAA
  String formatDate(DateTime date) {
    String day = date.day.toString().padLeft(2, '0');
    String month = date.month.toString().padLeft(2, '0');
    String year = date.year.toString();
    return '$day-$month-$year';
  }

  var person = Person(nameInput, birthDate, age);

  print('Tu nombre: ${person.name}');
  print('Tu fecha de nacimiento: ${formatDate(person.birthDate)}');
  print('Tu edad: ${person.age} años');
  print(birthDate.day);
}

class Person {
  final String? name;
  final DateTime birthDate;
  final int age;
  Person(this.name, this.birthDate, this.age);
}
