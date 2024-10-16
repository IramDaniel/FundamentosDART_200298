void main() {
  // Declarando una variable generica para almacenar mi nombre 
  var myName = 'Carlos';
  String myLastName = 'Varela';
  final int myDNI = 190654;
  late final int myAge;
  
  
  // Corregir mi nombre
  myName = 'Carlos Eduardo';
  // myDNI=123456; Esto ocacionó un error por que la variable esta definida cómo final y no puede actualizar su valor.
  
  
  print('Hola $myName $myLastName, tu matricula es: $myDNI y tu edad aún no la conozco, porque no se cuando naciste.');
  
  // Interpolando el valor de las variables con metodos de manipulación o transformación 
  
  print('\nHola ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es: $myDNI y tu edad aún no la conozco, porque no se cuando naciste.');
}