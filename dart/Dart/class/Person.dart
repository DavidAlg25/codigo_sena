import 'dart:convert';
import '../interfaces/IntPrintable.dart';
import '../interfaces/intSerializable.dart';

class Person implements Printable, Serializable {
  //ENCAPSULATION - Private attributes
  String _name;
  int _age;
  String _email;

  //CONSTRUCTOR
  Person(this._name, this._age, this._email);

  //GETTERS Y SETTERS - Encapsulation
  String get name => _name;

  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }

  int get age => _age;
  set age(int value) {
    if (value > 0) {
      _age = value;
    }
  }

  String get email => _email;
  set email(String value) {
    if (value.contains('@')) {
      _email = value;
    }
  }

  //IMPLEMENT METHOD OF THE INTERFACE Printable
  @override
  void printDetails() {
    print(
      'Details of the Persons Information: name: $_name, age: $_age, Email: $_email',
    );
  }

  //IMPLEMENT METHOD OF THE INTERFACE Serializable
  @override
  Map<String, dynamic> toJson() {
    return {'name': _name, 'age': _age, 'email': _email};
  }

  @override
  String toJsonString() {
    return jsonEncode(toJson());
  }
}
