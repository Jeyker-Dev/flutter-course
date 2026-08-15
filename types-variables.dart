void main() {
  // --- Strings ---
  // Representa una secuencia de caracteres.
  final String name = "Jeyker";

  // --- Numbers (int) ---
  // Números enteros sin decimales.
  final int number = 1;

  // --- Numbers (double) ---
  // Números de punto flotante (con decimales).
  final double pi = 3.14159;

  // --- Booleans ---
  // Valores lógicos: true o false.
  final bool isAlive = true;

  // --- Lists ---
  // Una colección ordenada de elementos (arrays).
  final List<String> abilities = ['Fly', 'Invisibility', 'Super Strength'];

  // --- Sets ---
  // Una colección de elementos únicos, donde no puede haber duplicados.
  final Set<String> uniqueAbilities = {'Fly', 'Invisibility', 'Fly'};

  // --- Maps ---
  // Una colección de pares clave:valor (como diccionarios u objetos JSON).
  final Map<String, dynamic> person = {
    'name': name,
    'age': 25,
    'isStudent': false,
  };

  // --- Dynamic ---
  // Tipo especial que permite que la variable cambie de tipo en ejecución.
  // Úsalo con precaución ya que quita seguridad al código.
  dynamic variableDinamica = "Hola";
  variableDinamica = 100; // Ahora es un entero

  // --- Var ---
  // No es un tipo en sí, le pide a Dart que infiera el tipo automáticamente.
  var version = 3.5; // Dart detecta que es un double

  // --- Null ---
  // Representa la ausencia de valor. Con Null Safety, los tipos no pueden ser 
  // nulos a menos que pongas un signo "?" al final (ej: String?).
  int? saldoNulo = null;

  print('Nombre: $name');
  print('Número: $number');
  print('Decimal: $pi');
  print('Booleano: $isAlive');
  print('Lista: $abilities');
  print('Set: $uniqueAbilities');
  print('Mapa: $person');
  print('Dinámico: $variableDinamica');
  print('Saldo: $saldoNulo');
}
