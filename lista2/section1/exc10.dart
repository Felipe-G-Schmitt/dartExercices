import 'dart:async';

void main() {
  final cliques = Stream.periodic(Duration(milliseconds: 500), (i) => 'Clique $i');

  Timer? timerDebounce;

  cliques.listen((evento) {
    print('Usuário: $evento');
    
    if (timerDebounce?.isActive ?? false) {
      timerDebounce!.cancel();
    }

    timerDebounce = Timer(Duration(seconds: 1), () {
      print('=> PROCESSANDO EVENTO FINAL: $evento');
    });
  });
}