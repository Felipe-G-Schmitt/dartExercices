class Produto { 
  String nome; 
  double preco; 
  int estoque;   
  
  Produto(this.nome, this.preco, this.estoque);
  
  void exibirInfo() { 
    print('Produto: $nome | R\$ $preco | Estoque: $estoque');
  } 
}

void main() {
  var p1 = Produto('Livro', 45.90, 20);
  var p2 = Produto('Caneta', 2.50, 100);
  var p3 = Produto('Mochila', 120.0, 5);

  p1.exibirInfo();
  p2.exibirInfo();
  p3.exibirInfo();
}