Future<int> buscarToken() {
  return Future.delayed(Duration(seconds: 2), () => 120);
}

void autenticar() async {
  buscarToken();
}

void main() async {

}