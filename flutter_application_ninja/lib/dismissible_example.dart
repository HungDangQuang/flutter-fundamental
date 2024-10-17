import 'package:flutter/material.dart';


class DismissibleExample extends StatefulWidget {
  const DismissibleExample({super.key});

  @override
  State<StatefulWidget> createState() {
    return DismissibleExampleState();
    
  }
}

class DismissibleExampleState extends State<DismissibleExample> {

  final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Dismissible(
          key: Key(item), 
          background: Container(color: Colors.blue,),
          secondaryBackground: Container(color: Colors.red,),
          child: Text("HUNGDANG"),
          onDismissed: (direction) => print("You swiped $direction"),
          );
      });
  }
}