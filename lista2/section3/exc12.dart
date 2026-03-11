import 'dart:async';

Future<String> autenticar() async {
  await Future.delayed(Duration(seconds: 1));
  return 'token_usuario_logado';
}

Future<int> buscarTotalVendas() async {
  await Future.delayed(Duration(seconds: 2));
  return 1500;
}

Future<int> buscarNovosClientes() async {
  await Future.delayed(Duration(seconds: 2));
  return 32;
}

Stream<String> streamNotificacoes() async* {
  for (int i = 1; i <= 3; i++) {
    await Future.delayed(Duration(seconds: 3));
    yield 'Nova notificação $i!';
  }
}

void main() async {
  try {
    print('1. Autenticando usuário...');
    String? token = await autenticar();
    
    if (token == null) {
      throw Exception('Falha na autenticação!');
    }
    print('Usuário autenticado...');

    streamNotificacoes().listen((notificacao) {
      print('$notificacao');
    });

    print('2. Carregando dados do painel...');
    final resultados = await Future.wait([
      buscarTotalVendas(),
      buscarNovosClientes(),
    ]);

    print('\n DASHBOARD ');
    print('Vendas Totais: ${resultados[0]}');
    print('Novos Clientes: ${resultados[1]}');
    print('...\n');

  } catch (e) {
    print('Erro ao carregar o sistema: $e');
  }
}