double calcularArea(double largura, double altura) { 
  return largura * altura; 
} 

double calcularAreaArrow(double l, double h) => l * h;

void main(){
  double areaFunc = calcularArea(5.0, 10.0);
  print('Calcular área com função normal: $areaFunc');

  double areaArrow = calcularAreaArrow(5.0, 10.0);
  print('Calcular área com arrow function: $areaArrow');
}