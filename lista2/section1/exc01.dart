Future<String> buscarUsuario() {
  return Future.delayed(Duration(seconds: 2), () => 'Maria Silva');
}

void main() {
  print("Buscando...");
  buscarUsuario().then((user) {
    print('$user');
  })
  .catchError((error) {
    print('Ocorreu o erro: $error');
  });
}