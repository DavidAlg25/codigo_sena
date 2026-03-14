import 'Person.dart';

class Employee extends Person {
  String _position;
  double _salary;
  List<String> _skills;

  // Constructor
  Employee(
    String name,
    int age,
    String email,
    this._position,
    this._salary,
    List<String>? skills,
  ) : _skills = skills ?? [],
      super(name, age, email);

  // Getters y Setters
  String get position => _position;
  set position(String value) => _position = value;

  double get salary => _salary;
  set salary(double value) {
    if (value >= 0) {
      _salary = value;
    }
  }

  List<String> get skills => List.unmodifiable(_skills);

  // METHOD OVERLOADING (overwriting)
  @override
  void printDetails() {
    print('''
    EMPLOYEE:
    name: $name
    age: $age
    Email: $email
    position: $_position
    salary: \$${_salary.toStringAsFixed(2)}
    skills: ${_skills.join(', ')}
    ''');
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json.addAll({
      'position': _position,
      'salary': _salary,
      'skills': _skills,
      'tipo': 'Employee',
    });
    return json;
  }

  // Additional method - OVERLOAD (different parameters)
  void addSkill(String habilidad) {
    _skills.add(habilidad);
  }

  void addSkillMultiple(List<String> skills) {
    _skills.addAll(skills);
  }

  // Method for calculating bonus - POLYMORPHISM
  double calculateBonus() {
    return _salary * 0.10; // Bono base del 10%
  }
}
