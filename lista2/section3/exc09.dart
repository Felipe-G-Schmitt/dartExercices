void main() {
  Map<int, String> produtos = {
    1: 'Teclado',
    2: 'Mouse',
    3: 'Monitor',
    4: 'Cadeira',
    5: 'Mousepad'
  };

  int idBusca = 3;
  if (produtos.containsKey(idBusca)) {
    print('Produto encontrado: ${produtos[idBusca]}');
  }

  produtos.remove(2);
  print('\nProduto com ID 2 removido!');

  print('\nLista de Produtos Atualizada:');
  produtos.forEach((id, nome) {
    print('ID: $id | Produto: $nome');
  });
}