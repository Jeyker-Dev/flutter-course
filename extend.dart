void main() {
  // Instanciamos la clase hija (Superman)
  // Aunque Superman no define 'name' en su cuerpo, lo tiene porque extiende de Hero.
  final superman = Superman(name: 'Clark Kent');

  print(superman);
  superman.usePower();
}

// 1. Clase Padre (Superclase)
abstract class Hero {
  String name;
  String? power;

  Hero({
    required this.name,
    this.power
  });

  @override
  String toString() {
    return '$name - $power';
  }
}

// 2. Clase Hija (Subclase)
// 'extends' crea una relación de herencia.
// Superman hereda TODAS las propiedades y métodos de Hero.
class Superman extends Hero {
  
  // El constructor debe llamar al constructor del padre usando 'super'
  Superman({required String name}) 
    : super(name: name, power: 'Super fuerza');

  // Podemos añadir métodos específicos o sobrescribir los del padre
  void usePower() {
    print('$name está volando con $power!');
  }
}
