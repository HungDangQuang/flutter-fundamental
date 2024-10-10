import 'package:flutter/material.dart';
import 'search_type.dart';

class DropdownExample extends StatefulWidget {

  const DropdownExample({super.key});

    @override
  State<StatefulWidget> createState() {
    return DropdownExampleState();  
  }
}

class DropdownExampleState extends State<DropdownExample> {
  SearchType _searchType = SearchType.anywhere;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: _searchType,
      items: const <DropdownMenuItem<SearchType>>[
        DropdownMenuItem(
          value: SearchType.anywhere,
          child: Text("Anywhere"),
           ),
        DropdownMenuItem(
          value: SearchType.text,
          child: Text("Text"),
           ),
        DropdownMenuItem(
          value: SearchType.title,
          child: Text("Title"),
           ),  
      ],
      onChanged: (SearchType? val) => {
       if(val != null) {
        setState(() {
          _searchType = val;
        })
       }
      },
      );
  }
} 