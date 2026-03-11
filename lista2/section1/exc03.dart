Future<String> autenticar() async {
  await Future.delayed(Duration(seconds: 1));
  return 'token';
}

Future<Map<String, dynamic>> buscarPerfil(String token) async {
  await Future.delayed(Duration(seconds: 1));
  return {'id': 1, 'nome': 'João'};
}

Future<List<String>> buscarPedidos(int userId) async {
  await Future.delayed(Duration(seconds: 1));
  return ['Pedido A', 'Pedido B'];
}

void main() async {
  print('...');
  final token = await autenticar();
  final perfil = await buscarPerfil(token);
  final pedidos = await buscarPedidos(perfil['id']);
  
  print('Pedidos do usuário ${perfil['nome']}: $pedidos');
}