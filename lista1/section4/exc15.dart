mixin Voador {  
   void voar() => print('Voando'); 
}  

mixin Nadador {
  void nadar() => print('Nadando');
}

mixin Corredor {
  void correr() => print('Correndo');
}
   
class Pato with Nadador, Voador {
    String nome;   
    Pato(this.nome); 
} 

class Golfinho with Nadador {
  String nome;
  Golfinho(this.nome);
}

class Avestruz with Corredor {
  String nome;
  Avestruz(this.nome);
}

void main() {
  var patinho = Pato('Donald');
  var dolfy = Golfinho('Boto cor de rosa');
  var ave = Avestruz('Papaléguas');

  print('${patinho.nome}:');
  patinho.nadar();
  patinho.voar();

  print('\n${dolfy.nome}:');
  dolfy.nadar();

  print('\n${ave.nome}:');
  ave.correr();
}