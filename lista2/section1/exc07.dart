import 'dart:async';

void main() async {
  final controller = StreamController<String>();

  controller.stream.listen((mensagem) {
    print('Nova mensagem: $mensagem');
  });

  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    controller.sink.add('Olá! Mensagem $i');
  }

  controller.close();
  print('Chat encerrado.');
}