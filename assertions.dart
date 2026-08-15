void main() {
  // Intentamos crear un cuadrado con un lado válido
  final mySquare = Square(side: 10);
  print('Área: ${mySquare.area}');

  // Intentamos crear un cuadrado con un lado INVÁLIDO
  // Esto lanzará un AssertionError si corres el código en modo debug.
  final errorSquare = Square(side: -5);
  print('Área: ${errorSquare.area}');
}

class Square {
  double side;

  // --- ASERCIONES (Assertions) ---
  // Se usan en el constructor para validar reglas de negocio básicas.
  // Sintaxis: assert( condición, mensaje_opcional );
  
  Square({required this.side})
      : assert(side >= 0, 'El lado debe ser un número positivo');

  double get area => side * side;
}
