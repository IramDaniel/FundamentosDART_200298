void main(){
  // Clase con parámetros posicionales los parámetros deben respetar su orden para ser asignados en la propiedad
  final wolverine = new Hero('Logan','Regeneración');
  // Clase con parámetros no posicionales, los puedo mandar en desorden
  final xmen = Team(type:'Héroes', name:'X-Men');
  final brotherhood = Team(name:"The Birtherhood of Evil Mutants");
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  print("------------------------------------------------------");
  print(xmen);
  print(xmen.name);
  print(xmen.type);
  // Invocando al metodo recrito con $overide
  print(xmen.toString());
  print("------------------------------------------------------");
  print(brotherhood);
  print(brotherhood.name);
  print(brotherhood.type);
  // Invocando al metodo recrito con $overide
  print(brotherhood.toString());
  
}

class Hero {
  String name;
  String power;
  
  Hero( {required String pName, required String pPower} )
    : name = pName, 
      power=pPower; 
}

class Team {
  String name;
  String type;
  
  Team(required this.name, this.type="No definido");

  String toString()
  {
    return 'Grupo: $name, Tipo: $type';
  }
}
