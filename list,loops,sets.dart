void main() {
  // ==========================================
  // 1. LISTAS (List)
  // ==========================================
  // Una lista es una colección ordenada de elementos. Permite duplicados.
  List<String> heroes = ['Batman', 'Superman', 'Wonder Woman', 'Batman'];
  
  print('--- LISTAS ---');
  print('Lista original: $heroes');
  print('Primer héroe: ${heroes[0]}'); // Acceso por índice (empieza en 0)
  print('Largo de la lista: ${heroes.length}');

  // ==========================================
  // 2. SETS (Set)
  // ==========================================
  // Una colección donde cada elemento es ÚNICO. No permite duplicados.
  // Es muy útil para limpiar duplicados de una lista.
  Set<String> uniqueHeroes = {'Batman', 'Superman', 'Wonder Woman', 'Batman'};
  
  print('\n--- SETS ---');
  print('Set (sin duplicados): $uniqueHeroes'); // El segundo 'Batman' desaparece.
  
  // Convertir lista a set y viceversa
  var listToSet = heroes.toSet();
  var backToList = listToSet.toList();

  // ==========================================
  // 3. CICLOS (Loops)
  // ==========================================
  print('\n--- CICLOS (Recorriendo la lista) ---');

  // A. Ciclo FOR tradicional
  // Útil si necesitas el índice actual.
  print('For tradicional:');
  for (int i = 0; i < heroes.length; i++) {
    print('Índice $i: ${heroes[i]}');
  }

  // B. Ciclo FOR-IN
  // Es la forma más limpia y común de recorrer colecciones.
  print('\nFor-in:');
  for (String hero in heroes) {
    print('Héroe: $hero');
  }

  // C. Método .forEach
  // Muy usado en programación funcional.
  print('\nMethod .forEach:');
  heroes.forEach((hero) => print('Héroe con forEach: $hero'));

  // D. Ciclo WHILE
  // Se ejecuta mientras una condición sea verdadera.
  print('\nWhile loop:');
  int counter = 0;
  while (counter < 2) {
    print('Contador: $counter');
    counter++;
  }
}
