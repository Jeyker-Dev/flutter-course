void main() async {
  print('Inicio del programa');

  try {
    // 'await' detiene la ejecución de esta función hasta que el Future se resuelva.
    // Solo se puede usar dentro de funciones marcadas con 'async'.
    final value = await httpGet('https://api.jeyker.com/usuario/1');
    print('Éxito: $value');
  } catch (err) {
    // Si el Future falla, el error cae aquí.
    print('Tenemos un error: $err');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  // Simulamos una carga de 2 segundos
  await Future.delayed(const Duration(seconds: 2));
  
  // Si quisiéramos simular un error para ver el 'catch':
  // throw 'Error en la petición: 404';

  return 'Respuesta exitosa de la API';
}
