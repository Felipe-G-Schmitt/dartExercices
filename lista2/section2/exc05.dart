void saudar({required String nome, String titulo = 'Sr.', bool mostrarHora = false}) {
  print('Olá, $titulo $nome!');
  

  if (mostrarHora) {
    print('Hora atual: ${DateTime.now()}');
  }
}

void main() {
  saudar(nome: 'João');
  saudar(nome: 'Maria', titulo: 'Dra.', mostrarHora: true);
}