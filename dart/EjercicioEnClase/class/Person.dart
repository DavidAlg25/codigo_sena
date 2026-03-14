import 'dart:convert';

import '../interfaces/Imprimible.dart';
import '../interfaces/Serializable.dart';

class Person implements Imprimible, Serializable {
  //ENCAPSULAMIENTO - Atributos privados
  String _name;
  int _age;
  String _email;
 
  //CONSTRUCTOR
  Person(this._name, this._age, this._email);
 
  //GETTERS Y SETTERS - Encapsulamiento
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
 
  //IMPLEMENTACIÓN DE MÉTODOS DE LA INTERFAZ Imprimible
  @override
  void printDetails() {
    print(
      'Detalle de la información de la persona: Nombre: $_name, Edad: $_age, Email: $_email',
    );
  }
 
  //IMPLEMENTACIÓN DE MÉTODOS DE LA INTERFAZ Serializable
  @override
  Map<String, dynamic> toJson() {
    return {'nombre': _name, 'edad': _age, 'email': _email};
  }
 
  @override
  String toJsonString() {
    return jsonEncode(toJson());
  }
}