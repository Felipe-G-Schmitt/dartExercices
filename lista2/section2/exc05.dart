void saudar(String nome, {String titulo = 'Sr.', required bool mostrarHora}){
  if (mostrarHora = true){
    (DateTime.now());
  }
  return print('Olá ${titulo} ${nome}, ');
}

void main(){
  saudar('asas', titulo: 'senhora', mostrarHora:true);
}
