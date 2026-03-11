import 'dart:async';

void main() async {
  final controller = StreamController<int>.broadcast();

  controller.stream.listen((numero) => print('Imprimindo: $numero'));

  int contador = 0;
  controller.stream.listen((numero) {
    contador++;
    print('Total: $contador');
  });

  int soma = 0;
  controller.stream.listen((numero) {
    soma += numero;
    print('Soma: $soma');
  });

  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    controller.sink.add(i);
  }

  controller.close();
}