void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  
  nums.add(11);
  nums.remove(5);
  
  print('Tamanho da lista: ${nums.length}');
  print('Primeiro elemento: ${nums.first}');
  print('Último elemento: ${nums.last}');
  
  print('Todos os elementos:');
  nums.forEach((num) {
    print(num);
  });
}