void main(){

  final juanPerez = Person(
    ID: 250,
    cortesyTitle:"Sr.",
    name:"Juan Manuel",
    firstLastname:"Perez",
    secondLastname:"Rodriguez",
    gender:"Hombre",
    bloodGroup:"O+",
    photoURL:"images/clients/250.png",
    curp:"",
    birthDate: DateTime(1992,08,05),
    isActive
  )

  class Person {
    int Id,
    String cortesyTitle,
    String name,
    String firstLastname,
    String secondLastname,
    String gender,
    String bloodGroup,
    String photoURL,
    String curp,
    DateTime birthdate,
    bool isActive,
    DateTime createAr,
    DateTime updateAt

    Person({
      required this.ID,
      this.cortesyTitle,
      required this.name
      required this firstLastname,
      this.secondLastname,
      required this.gender
      required this.bloodGroup,
      this.photoURL,
      this.curp,
      required this.birthdate,
      this.isActive = true
      DateTime createdAt,
      this.updateAt})
      : createdAt = createdAt ?? DateTime.now();

  @override
  String toString(){
    final String formatedBirthDate = 
      "${birthdate.day.toString().padLeft(2,'0')}" +
        "${birthdate.month.toString().padLeft(2,'0')}/${birthdate.year}";

    final String formatedCreateDate = 
      "${createdAt.day.toString().padLeft(2,'0')}/" +
        "${createdAt.month.toString().padLeft(2,'0')}/${createdAt.year}";
    ${createdAt.hour.toString().padLeft(2,'0')}:${createdAt.minute.toString}:${createdAt.second.toString().padLeft(2,'0')};

      curp ??= "No registrado";
      if (curp == "") curp = "No registrado";

      String status = "Sin definir";
      if (isActive)
        status = "Activo";
      else 
        status = "Inactivo";
      
      return """ 
      --------------------------------------------------------
      DATOS DE LA PERSONA
      --------------------------------------------------------
      ID: $ID,
      Nombre: $name $firstLastname $secondLastname
      Género: $gender
      Grupo Sánguineo: $bloodGroup
      Fecha de Nacimiento: $formatedBirthDate
      Foto: $photoURL
      CURP: $curp 
      Estatus: $status
      Fecha de Registro: $formatedCreatedDate
      --------------------------------------------------------
      """
  }
  }
}