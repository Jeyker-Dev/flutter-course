void main() {
  final flipper = Dolphin();
  print('--- Delfín ---');
  flipper.swim();

  final batman = Bat();
  print('\n--- Murciélago ---');
  batman.walk();
  batman.fly();

  final duck = Duck();
  print('\n--- Pato ---');
  duck.walk();
  duck.swim();
  duck.fly();
}

// 1. Definimos la jerarquía básica
abstract class Animal {}

abstract class Mammal extends Animal {}
abstract class Bird extends Animal {}
abstract class Fish extends Animal {}

// 2. Definimos los MIXINS
// Un mixin es una clase que contiene métodos y propiedades 
// que pueden ser utilizados por otras clases sin ser su padre.
mixin Walker {
  void walk() => print('Estoy caminando');
}

mixin Swimmer {
  void swim() => print('Estoy nadando');
}

mixin Flyer {
  void fly() => print('Estoy volando');
}

// 3. Aplicamos los mixins usando la palabra clave 'with'
// Podemos aplicar múltiples mixins separados por comas.

class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Walker, Flyer {}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Walker, Flyer {}

class Duck extends Bird with Walker, Swimmer, Flyer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Flyer {}
