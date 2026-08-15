void main() {
  // 1. Llamada a función básica
  greetEveryone();

  // 2. Llamada con parámetros posicionales
  print('Suma: ${addTwoNumbers(10, 20)}');

  // 3. Llamada con parámetros opcionales posicionales
  print(greetPerson('Jeyker'));
  print(greetPerson('Jeyker', 'Hola qué tal'));

  // 4. Llamada con parámetros NOMBRADOS
  // Son los más usados en Flutter porque hacen el código muy legible.
  print(greetWithNamedParams(name: 'Fernando', message: 'Bienvenido'));
  
  // En parámetros nombrados, el orden no importa
  print(greetWithNamedParams(message: 'Saludos', name: 'Maria'));

  // 5. Arrow functions (funciones de flecha)
  print('Suma Flecha: ${addTwoNumbersArrow(5, 5)}');
}

// --- 1. Función Básica ---
// void indica que la función no retorna nada.
void greetEveryone() {
  print('Hola a todos');
}

// --- 2. Parámetros Posicionales ---
// Obligatorios y en el orden definido.
int addTwoNumbers(int a, int b) {
  return a + b;
}

// --- 3. Parámetros Opcionales Posicionales ---
// Se encierran entre corchetes [].
// Podemos darles un valor por defecto.
String greetPerson(String name, [String message = 'Hola']) {
  return '$message, $name';
}

// --- 4. Parámetros Nombrados ---
// Se encierran entre llaves {}.
// 'required' obliga a pasar el valor.
// También pueden tener valores por defecto.
String greetWithNamedParams({
  required String name, 
  String message = 'Hola',
}) {
  return '$message, $name';
}

// --- 5. Funciones de Flecha (Arrow Functions) ---
// Útiles para funciones de una sola línea.
int addTwoNumbersArrow(int a, int b) => a + b;
