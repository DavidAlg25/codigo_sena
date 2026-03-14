import 'Warrior.dart';

class Game {
  bool _status;
  List<Warrior> _warriors;
  DateTime? _timeGame;

  Game(this._warriors) : _status = false;

  bool startGame() {
    _status = true;
    _timeGame = DateTime.now();
    print("Juego iniciado en $_timeGame");
    return _status;
  }

  bool endGame() {
    _status = false;
    print("Juego terminado.");
    return !_status;
  }

  String scenery() {
    String escenario = "Olimpo"; 
    print("Escenario del juego: $escenario");
    return escenario;
  }

  String gameLevel() {
    String nivel = "Nivel 1"; 
    print("Nivel actual: $nivel");
    return nivel;
  }

  void turno(Warrior atacante, Warrior defensor) {
  if (!_status) {
    print("El juego no está iniciado.");
    return;
  }

  double damage = atacante.hit(); 
  if (damage > 0) {
    defensor.takeDamage(damage); 
    if (!defensor.isAlive()) {
      print("${defensor.name} ha sido derrotado!");
      endGame();
    }
  }
}
}
