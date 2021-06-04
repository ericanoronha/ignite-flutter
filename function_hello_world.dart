//
//  Sem parâmetro nomeado
//
/*
void main() {
  final a = printTela(0);
  print(a);
}

String printTela(int index) {
  return "Printou a tela " + index.toString();
}
*/
//
//  Com parâmetro nomeado
//
void main() {
  final a = printTela(index: 0);
  print(a);
}

String printTela({required int index}) {
  return "Printou a tela $index";
}
