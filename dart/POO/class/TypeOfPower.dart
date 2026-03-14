import 'Warrior.dart';
import 'dart:math';

class TypeOfPower extends Warrior {
  double typeOfPower;

  TypeOfPower(this.typeOfPower, String name, double power, double life) 
      : super(name, power, life);

  List<double> getTypeOfPower() {
    print("El poder de $name es: $typeOfPower");
    return [typeOfPower];
  }

  bool createTypeOfPower(double newPower) {
    if (newPower > 0) {
      typeOfPower = newPower;
      print("Se creó un nuevo poder: $typeOfPower");
      return true;
    }
    return false;
  }

  bool editTypeOfPower(double newPower) {
    if (newPower > 0) {
      print("El poder $typeOfPower cambia a $newPower");
      typeOfPower = newPower;
      return true;
    }
    return false;
  }

  double calculateDamage() {
    double damage = Random().nextDouble() * typeOfPower;
    print("$name genera $damage de daño con su poder.");
    return damage;
  }
}
