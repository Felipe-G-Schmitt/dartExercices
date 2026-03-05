class Produto { 
  String nome; 
  double preco; 
  int estoque;   
  
  Produto(this.nome, this.preco, this.estoque); 

  Produto.esgotado(this.nome, this.preco) : estoque = 0;

  Produto.promocao(this.nome, double precoNormal, this.estoque) : preco = precoNormal * 0.8;
  
  void exibirInfo() { 
    print('Produto: $nome | R\$ $preco | Estoque: $estoque');  
  } 
}

void main() {
  var p1 = Produto.esgotado('Caderno', 15.0);
  var p2 = Produto.promocao('Estojo', 20.0, 50);

  p1.exibirInfo();
  p2.exibirInfo();
}