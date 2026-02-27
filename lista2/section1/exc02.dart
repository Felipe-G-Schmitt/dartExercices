void main() {
  const pi = 3.14159;
  final dataAtual = DateTime.now();

  print('Data atual: ${dataAtual}');
  print('Pi: ${pi}');

  //pi = 3.14 //Constant variables can't be assigned a value after initialization
  //dataAtual = 2026-02-30 20:46:59.362110 //The final variable 'dataAtual' can only be set once.
}
