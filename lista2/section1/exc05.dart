import 'dart:async';

Future<String> buscarDados() async {
  await Future.delayed(Duration(seconds: 5));
  return 'Dados carregados';
}

void main() async {
  try {
    print('Buscando dados...');
    final resultado = await buscarDados().timeout(Duration(seconds: 3));
    print(resultado);
  } on TimeoutException {
    print('Operação demorou muito!');
  } catch (e) {
    print('Ocorreu outro erro: $e');
  }
}