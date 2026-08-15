void main() {
  // Creamos una instancia de la clase Hero
  // Usamos parámetros nombrados como vimos en las funciones
  final wolverine = Hero(
    name: 'Logan',
    power: 'Regeneración',
    isAlive: true
  );

  final ironman = Hero(
    name: 'Tony Stark',
    power: 'Tecnología'
    // isAlive será true por defecto
  );

  print(wolverine.toString());
  print(ironman.toString());
  
  // Llamamos a un método de la clase
  wolverine.usePower();
}

class Hero {
  // 1. Propiedades (Atributos)
  // Se recomienda usar 'final' si el valor no cambiará después de asignarse
  String name;
  String power;
  bool isAlive;

  // 2. Constructor
  // Esta es la forma corta y moderna de Dart para asignar valores automáticamente
  // Usamos llaves {} para que sean parámetros nombrados (estilo Flutter)
  Hero({
    required this.name,
    required this.power,
    this.isAlive = true // Valor por defecto
  });

  // 3. Métodos
  void usePower() {
    print('$name está usando $power!');
  }

  // Sobrescribir el método toString para ver información útil al imprimir el objeto
  @override
  String toString() {
    return 'Hero: $name, Power: $power, Alive: ${isAlive ? 'YES' : 'NO'}';
  }
}
