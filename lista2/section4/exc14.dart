abstract class Veiculo {
  void acelerar();
}

class Carro implements Veiculo {
  @override
  void acelerar() {
    print('Carro acelerando: Vruuummm!');
  }
}

class Moto implements Veiculo {
  @override
  void acelerar() {
    print('Moto acelerando: Ran dan dan dan!');
  }
}

void main() {
  List<Veiculo> veiculos = [Carro(), Moto()];

  for (var v in veiculos) {
    v.acelerar();
  }
}