Future<void> buscarTudo() async {
  try {
    print(DateTime.now());
    String buscarProdutos() {
      return 'Celular';
    }

    String buscarCategorias() {
      return 'Eletrónico';
    }

    int buscarPromocoes() {
      return 2000;
    }

    String buscarDestaques() {
      return 'iPhone 17 256GB';
    }

    String produtos = buscarProdutos();
    String categoria = buscarCategorias();
    int promocao = buscarPromocoes();
    String destaque = buscarDestaques();

    print (produtos);
    print (categoria);
    print (promocao);
    print (destaque);

  } catch (error) {
    print('Error: $error');
  }
}

Future<void> main() async {
  await buscarTudo().then((_) {
    print(DateTime.now());
  });
}
