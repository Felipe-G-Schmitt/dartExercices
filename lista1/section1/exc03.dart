var num = '42';
var numInt = int.parse(num);
var numDouble = double.parse(num);
var num2 = 100;
var numString = num2.toString();

void main(){
  print('String antes da conversão: ${num.runtimeType}');
  print('String depois da conversão para int: ${numInt.runtimeType}');
  print('String depois da conversão para double: ${numDouble.runtimeType}');
  print('Int antes da conversão: ${num2.runtimeType}');
  print('Int depois da conversão para String: ${numString.runtimeType}');
}