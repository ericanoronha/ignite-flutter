void main() {
  var minhaClass = MinhaClass("Valor 1");
  //minhaClass.title = "Novo valor";
  print(minhaClass.title);
  minhaClass = MinhaClass("Valor 2");
  print(minhaClass.title);
}

class MinhaClass {
  //final String title = "Inicializado";
  final String title;
  MinhaClass(this.title);
}
