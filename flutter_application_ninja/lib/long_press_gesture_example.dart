import 'package:flutter/material.dart';
import 'person.dart';

class ManagePeople extends StatefulWidget {
  const ManagePeople({super.key});


  @override
  State<StatefulWidget> createState() {
    return ManagePeopleState();
  }
}


class ManagePeopleState extends State<ManagePeople> {

  final List<Map> _peopleObjects = 
      [
        {"first":"Jim", "last":"Halpert"},
        {"first":"Kelly", "last":"Kapoor"},
        {"first":"Creed", "last":"Bratton"},
        {"first":"Dwight", "last":"Schrute"},
        {"first":"Andy", "last":"Bernard"},
        {"first":"Pam", "last":"Beasley"},
        {"first":"Jim", "last":"Halpert"},
        {"first":"Robert", "last":"California"},
        {"first":"David", "last":"Wallace"},
        {"first":"Ryan", "last":"Howard"}
      ];
    

  void _removePerson(Map person) {
    print("REMOVE PERSON");
    setState(() {
        _peopleObjects.remove(person);
    });
  }
  
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: _peopleObjects.map((person) =>
        Person(person:person, callback: () => _removePerson(person),)).toList(),
);
  }
}