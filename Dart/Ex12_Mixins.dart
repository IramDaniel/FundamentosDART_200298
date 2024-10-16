abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando!');
  void planear(int distanciaMaxima) => print('Este animal puede planear hasta: ${distanciaMaxima}!');
  void ascender(double alturaMax) => print('Este animal puede ascender hasta una altura de: ${alturaMax} mts. sobre el nivel del mar!');
  void descender(int velocidadMax) => print('Este animal puede descender hasta: ${velocidadMax}!');
}

mixin Caminante {
  void caminar() => print('Estoy caminando!');
  void correr(double velocidadMax) => print('Este animal puede correr a una velocidad máxima de: ${velocidadMax} km/h!');
  void trotar(bool ritmoAlto) => print('Este animal puede trotar');
  void saltar(bool altura) => print('Este animal puede saltar hasta una altura de: ${altura}');
}

mixin Nadador {
  void nadar() => print('Estoy nadando!');
  void sumergir(int profundidadMax) => print('Este animal se puede sumergir hasta una profundidad de: ${profundidadMax} mts.');
  void respirar(bool enSuperficie) => print('El animal está respirando en la superficie.');
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final fliper = Delfin();
  print("Instanciando la clase de Delfin, y accediendo a sus funciones.");
  fliper.nadar();

  print("-------------------------------------------------------------");
  print("Instanciando la clase de Murcielago, y accediendo a sus funciones.");
  final chupacabras = Murcielago();
  chupacabras.caminar();
  chupacabras.volar();

  print("-------------------------------------------------------------");
  print("Instanciando la clase de Pato, y accediendo a sus funciones.");
  final pekines = Pato();
  pekines.planear(100);
  pekines.ascender(30);
  pekines.descender(5); // Cambiado de "5 km/h" a 5
  pekines.caminar();
  pekines.nadar();
}