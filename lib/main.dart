import 'package:flutter/material.dart';

void main() {
  //task 1
var name = myName();
print('My name is $name');
print('My name is ${name.length}');

//task2
var person = new Person('Sonya');
person.printName();
}

String myName() {
  return 'Sonya';
}

class Person {
    String firstName;

    Person(this.firstName);

    printName() {
      print(firstName);
    }
}