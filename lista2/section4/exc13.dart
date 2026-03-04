class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print('Depositou R\$ $valor. Novo saldo: $saldo');
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Sacou R\$ $valor. Novo saldo: $saldo');
    } else {
      print('Saldo insuficiente.');
    }
  }
}

class ContaPoupanca extends ContaBancaria {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);  
   
  void aplicarRendimento(double taxa) {   
      saldo += saldo * taxa;  
      print('Rendimento aplicado! Saldo atualizado: $saldo');
  } 
}

void main() {
  var minhaConta = ContaPoupanca('José', 1000.0);
  minhaConta.depositar(200.0);
  minhaConta.sacar(100.0);
  minhaConta.aplicarRendimento(0.05);
}