Future<String> buscarUsuario() {
  return Future.delayed(Duration(seconds: 2), () => 'Maria Silva');
}

int random() {
  if(DateTime.now().second % 2 == 0){
    return 1;
  } else {
    throw Exception('Erro ao buscar usuário');
  }
}

void main() async {
  try {
    random();
    print("Buscando...");
    String nome = await buscarUsuario();
    print('$nome');
  } catch (error) {
    print('Error: $error');
  };
}