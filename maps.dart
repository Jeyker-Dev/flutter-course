void main() {
  // 1. Declaración de un Mapa
  // Clave: String, Valor: dynamic (puede ser cualquier cosa)
  final Map<String, dynamic> pokemon = {
    'name': 'Pikachu',
    'hp': 100,
    'isAlive': true,
    'abilities': ['Latigo Cepa', 'Impactrueno'],
    'sprites': {
      1: 'pikachu/front.png',
      2: 'pikachu/back.png'
    }
  };

  print('Nombre: ${pokemon['name']}');
  print('HP: ${pokemon['hp']}');
  
  // Acceder a un valor dentro de otro mapa (anidado)
  print('Sprite Frontal: ${pokemon['sprites'][1]}');

  // 2. Agregar o modificar valores
  pokemon['hp'] = 90; // Modificar
  pokemon['level'] = 15; // Agregar nueva clave
  print('Nivel actualizado: ${pokemon['level']}');

  // 3. Propiedades útiles
  print('\n--- Propiedades ---');
  print('Tamaño del mapa: ${pokemon.length}');
  print('Todas las claves: ${pokemon.keys}');
  print('Todos los valores: ${pokemon.values}');

  // 4. Métodos útiles
  print('\n--- Métodos ---');
  // Verificar si existe una clave
  if (pokemon.containsKey('name')) {
    print('El pokemon tiene nombre: ${pokemon['name']}');
  }

  // Eliminar un elemento
  pokemon.remove('isAlive');
  print('Mapa después de eliminar isAlive: $pokemon');
}
