double operacao(double a, double b, Function operacao) { 
  return operacao(a,b); 
}

void main() {
  double soma(double a, double b) => a+b;
  double multi(double a, double b) => a*b;

  print('Soma: ${operacao(10, 5, soma)}');
  print('Multiplicação: ${operacao(10, 5, multi)}');
}