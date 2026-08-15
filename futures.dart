void main() {
  print('Inicio del programa');

  // Llamamos a la función que retorna un Future
  httpGet('https://api.jeyker.com/usuario/1')
    .then((value) {
      print('Éxito: $value');
    })
    .catchError((err) {
      print('Error capturado: $err');
    });

  print('Fin del programa');
}

// Un Future es una promesa de que obtendrás un valor en el futuro.
// El tipo dentro de los diamantes <String> indica qué valor devolverá.
Future<String> httpGet(String url) {
  // Simulamos una petición HTTP que tarda 2 segundos
  return Future.delayed(const Duration(seconds: 2), () {
    // Si queremos simular un error:
    // throw 'Error en la petición: 404 Not Found';
    
    return 'Respuesta de la petición HTTP';
  });
}
