void main() {
  // 1. Declaración inicial como String
  dynamic errorMessage = 'Error al conectar al servidor';
  print('Valor: $errorMessage - Tipo: ${errorMessage.runtimeType}');

  // 2. Cambiamos el tipo a un Código de Error (int)
  // Esto sería imposible con 'String' o 'var'
  errorMessage = 404;
  print('Valor: $errorMessage - Tipo: ${errorMessage.runtimeType}');

  // 3. Cambiamos a un Booleano
  errorMessage = false;
  print('Valor: $errorMessage - Tipo: ${errorMessage.runtimeType}');

  // 4. Cambiamos a una Lista
  errorMessage = [404, 'Not Found', true];
  print('Valor: $errorMessage - Tipo: ${errorMessage.runtimeType}');

  print('\n--- El Peligro de dynamic ---');

  dynamic val = "Soy un String";
  
  // ¡CUIDADO! El compilador me deja escribir esto aunque "abc()" no existe para Strings.
  // Si ejecutas esto, Dart lanzará un error de "NoSuchMethodError" en tiempo de ejecución.
  try {
    val.abc(); 
  } catch (e) {
    print('Error capturado: El método abc() no existe en un String.');
  }

  // Uso práctico: Cuando recibes datos de una API externa (JSON) 
  // y no estás seguro de qué estructura exacta vendrá en ciertos campos.
  Map<String, dynamic> response = {
    'status': 200,
    'data': 'Operación exitosa',
    'meta': null
  };
  
  print('\nRespuesta de la "API": ${response['data']}');
}
