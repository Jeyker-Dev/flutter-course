void main() {
  final mySquare = Square(side: 10);

  // Intentamos asignar un valor negativo usando el Setter
  // El setter validará esto y lanzará un error si no es correcto.
  mySquare.side = -5; 

  print('Área: ${mySquare.area}'); // Usamos el Getter 'area'
  print('Lado actual: ${mySquare.side}');
}

class Square {
  // El guion bajo (_) hace que la propiedad sea PRIVADA.
  // Solo se puede acceder a ella dentro de esta clase (o este archivo).
  double _side;

  Square({required double side})
      : assert(side >= 0, 'El lado debe ser >= 0'),
        _side = side;

  // --- GETTER ---
  // Se usa para calcular un valor sobre la marcha o proteger una propiedad.
  // No lleva paréntesis ().
  double get area {
    return _side * _side;
  }

  // Otro getter simple para obtener el lado
  double get side => _side;

  // --- SETTER ---
  // Se usa para establecer un valor con lógica o validación.
  set side(double value) {
    print('Configurando nuevo valor: $value');
    if (value < 0) throw 'El lado no puede ser negativo';
    
    _side = value;
  }
}
