Map<String, String> cache = {'tema': 'Escuro'};

Future<String> buscarDaAPI(String chave) async {
  await Future.delayed(Duration(seconds: 2));
  return 'Valor da API para $chave';
}

Future<String?> buscarConfiguracao(String chave) async {
  return cache[chave] ?? await buscarDaAPI(chave);
}

void main() async {
  final tema = await buscarConfiguracao('tema');
  print('Configuração do tema: $tema');

  print('Buscando fonte (pode demorar)...');
  final fonte = await buscarConfiguracao('fonte');
  print('Configuração da fonte: $fonte');
}