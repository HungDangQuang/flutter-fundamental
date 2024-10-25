import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final Map person;
  final VoidCallback callback;
  const Person({super.key, required this.person, required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: callback,
      child: ListTile(
      title: Text("${person['first']} ${person['last']}"),
    ),
    );
  }
}