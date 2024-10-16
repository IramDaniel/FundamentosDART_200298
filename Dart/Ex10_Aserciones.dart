void main(){
  final mySquare = Square( side:10 );
  
  mySquare._side = -32;
  
  print(""" Lado del Cuadrado: ${mySquare._side}
  Área que ocupa: ${mySquare.calculateArea()}""");
}

class Square {
  double _side; // side * side
  
  Square({ required double side })
    : _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side(double value)
  {
    return _side*_side;
  }
  
  double calculateArea() {
    return _side * _side;
  }
}