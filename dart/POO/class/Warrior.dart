import 'dart:math';
import '../interfaces/IT_Warrior.dart';

class Warrior implements IT_Warrior {
  double _power;
  String _name;
  double _life;

  Warrior(this._name, this._power, this._life);

  String get name => _name;
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }

  double get power => _power;
  set power(double value) {
    if (value > 0) {
      _power = value;
    }
  }

  double get life => _life;
  set life(double value) {
    if (value >= 0) {
      _life = value;
    }
  }

  @override
double hit() {
  double chance = Random().nextDouble() * 100;
  if (chance < _power) {
    double damage = Random().nextDouble() * _power;
    print("$_name acertó el golpe causando ${damage.toStringAsFixed(2)} de daño.");
    return damage;
  } else {
    print("$_name falló el golpe.");
    return 0;
  }
}

double calculateDamage() {
  return Random().nextDouble() * _power;
}


  @override
  List<double> run() {
    double distancia = Random().nextDouble() * 10;
    print("$_name corre $distancia metros.");
    return [distancia];
  }

  @override
  double live() {
    print("$_name tiene $_life puntos de vida.");
    return _life;
  }

  bool isAlive() => _life > 0;

  void takeDamage(double damage) {
    _life -= damage;
    if (_life < 0) _life = 0;
    print("$_name recibe ${damage.toStringAsFixed(2)} de daño. Vida restante: ${_life.toStringAsFixed(2)}");
  }

}
