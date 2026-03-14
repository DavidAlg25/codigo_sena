import 'Warrior.dart';

class TypeOfWarrior extends Warrior {
  String typeOfWarrior;

  TypeOfWarrior(this.typeOfWarrior, String name, double power, double life) 
      : super(name, power, life);

  List<String> getTypeOfWarrior() {
    print('El Guerrero $name es: $typeOfWarrior');
    return [typeOfWarrior];
  }

  bool createTypeOfWarrior(String newType) {
    if (newType.isNotEmpty) {
      typeOfWarrior = newType;
      print("Se creó el tipo de guerrero: $typeOfWarrior");
      return true;
    }
    return false;
  }

  bool editTypeOfWarrior(String newType) {
    if (newType.isNotEmpty) {
      print("El tipo de guerrero $typeOfWarrior cambia a $newType");
      typeOfWarrior = newType;
      return true;
    }
    return false;
  }
}
