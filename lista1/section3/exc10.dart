void main() {
  Set<int> a = {1, 2, 3, 4, 5};
  Set<int> b = {4, 5, 6, 7, 8};

  print('União (todos juntos sem repetir): ${a.union(b)}'); 
  print('Interseção (o que tem em comum): ${a.intersection(b)}'); 
  print('Diferença (A - B): ${a.difference(b)}');
  print('O número 3 está no conjunto A? ${a.contains(3)}');
}