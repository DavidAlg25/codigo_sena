import 'dart:io';
import './class/Warrior.dart';
import './class/TypeOfWarrior.dart';
import './class/TypeOfPower.dart';
import './class/Game.dart';

void main() {
  TypeOfWarrior guerrero1 = TypeOfWarrior("Caballero", "Robin", 70, 100);
  TypeOfPower guerrero2 = TypeOfPower(40, "Oz", 65, 100);

  Game partida = Game([guerrero1, guerrero2]);
  partida.startGame();
  partida.scenery();
  partida.gameLevel();

  while (guerrero1.isAlive() && guerrero2.isAlive()) {
    
    print("\nTurno de ${guerrero1.name} (${guerrero1.typeOfWarrior})");
    print("1. Atacar");
    print("2. Correr");
    String? opcion = stdin.readLineSync();

    if (opcion == "1") {
      partida.turno(guerrero1, guerrero2);
    } else if (opcion == "2") {
      guerrero1.run();
    }

    if (!guerrero2.isAlive()) break;

    print("\nTurno de ${guerrero2.name} (Poder: ${guerrero2.typeOfPower})");
    print("1. Atacar");
    print("2. Correr");
    opcion = stdin.readLineSync();

    if (opcion == "1") {
      partida.turno(guerrero2, guerrero1);
    } else if (opcion == "2") {
      guerrero2.run();
    }
  }

  if (guerrero1.isAlive()) {
    print("\n${guerrero1.name} gana la batalla!");
  } else {
    print("\n${guerrero2.name} gana la batalla!");
  }

  partida.endGame();
}

