Future<String> buscarUsuario() {
  return Future.delayed(Duration(seconds: 2), () => 'Maria Silva');
}


void main() async {
  try {
    print("Buscando...");
    String nome = await buscarUsuario();
    print('$nome');
    
  } catch (error) {

  };
}